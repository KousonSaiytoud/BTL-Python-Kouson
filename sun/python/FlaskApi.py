from fastapi import FastAPI, HTTPException
import requests

app = FastAPI()

API_KEY = 'dd086108ea-41eb72e8f1-se2v28' 
BASE_URL = 'https://api.fastforex.io/'  

@app.get("/forex/lak_to_vnd")
def get_lak_to_vnd_rate():
    from_currency = 'USD'
    to_currencies = 'LAK,VND'

    url = f"{BASE_URL}fetch-multi?from={from_currency}&to={to_currencies}&api_key={API_KEY}"
    response = requests.get(url)

    if response.status_code == 200:
        data = response.json()
        if 'results' in data and 'LAK' in data['results'] and 'VND' in data['results']:
            usd_to_lak = data['results']['LAK']
            usd_to_vnd = data['results']['VND']
            lak_to_vnd = usd_to_vnd / usd_to_lak 
            return {"lak_to_vnd": lak_to_vnd}
        else:
            raise HTTPException(status_code=404, detail="Currency pair not found.")
    elif response.status_code == 401:
        raise HTTPException(status_code=401, detail="Unauthorized. Check your API key.")
    else:
        raise HTTPException(status_code=response.status_code, detail=response.text)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)
