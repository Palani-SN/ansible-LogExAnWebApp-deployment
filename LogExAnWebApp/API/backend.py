from fastapi import FastAPI, Request
from pydantic import BaseModel
from fastapi.logger import logger
from LogExAn.LogicalAnalyser import LogAn

app = FastAPI()


@app.post("/{solution}/{output}")
async def solutions(solution: str, output: str, expression: Request):

    body = await expression.json()
    condition = body["condition"]
    try:
        LA = LogAn(condition)
        result = None
        if(solution == "abstract"):
            if(output == "DICT"):
                result = LA.solution(output)
            elif(output == "JSON"):
                result = LA.solution(output)
            else:
                result = "abstract solution returns output format only in DICT or JSON"
        elif(solution == "elaborate"):
            if(output == "DATAFRAME"):
                result = LA.elaborate_solution(output)
            elif(output == "MARKDOWN"):
                result = LA.elaborate_solution(output)
            else:
                result = "elaborate solution returns output format only in DATAFRAME or MARKDOWN"
        else:
            result = "solution can only be abstract or elaborate"
    except:
        result = "condition not correct"

    return {"solution": solution, "format": output, "result": result}
