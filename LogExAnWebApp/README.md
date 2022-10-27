# LogExAnWebApp (Logical Expression Analysis Web Applications)

- A Solver for Solving any Logical Expressions, shortly Reverse calculations of logical expressions for Analysis.
- Check out the example code in repo ( https://github.com/Palani-SN/LogExAnWebApp ) for reference

## API (Rest API service using fast API)

- run the script using the command **uvicorn backend:app** in path **API/**

- get **ABSTRACT** results in the form of **DICT**
  - METHOD : POST
  - URL :  localhost:8000/abstract/DICT
  - REQUEST : 
```json
{                                                                                     
  "condition": "( ( Var_new_1 == 1 ) && ( ( Var_new_4 == 7 ) || ( Var_new_9 == 12 ) ) )"
}
```                                                                                    
  - RESPONSE : 
```json
{
    "solution": "abstract",
    "format": "DICT",
    "result": {
        "True": {
            "Var_new_1": [
                1
            ],
            "Var_new_4": [
                7
            ],
            "Var_new_9": [
                12
            ]
        },
        "False": {
            "Var_new_1": [
                -4,
                -3,
                -2,
                -1,
                0,
                2,
                3,
                4,
                5,
                6
            ],
            "Var_new_4": [
                2,
                3,
                4,
                5,
                6,
                8,
                9,
                10,
                11,
                12
            ],
            "Var_new_9": [
                7,
                8,
                9,
                10,
                11,
                13,
                14,
                15,
                16,
                17
            ]
        }
    }
}
```     

- similarly we can get **ABSTRACT** results in the form of **JSON**

- get **ELABORATE** results in the form of **DATAFRAME**
  - METHOD : POST
  - URL :  localhost:8000/elaborate/DATAFRAME
  - REQUEST : 
```json
{                                                                                     
  "condition": "( ( Var_new_1 == 1 ) && ( ( Var_new_4 == 7 ) || ( Var_new_9 == 12 ) ) )"
}
```                                                                                    
  - RESPONSE : 
```json
{
    "solution": "elaborate",
    "format": "DATAFRAME",
    "result": {
        "Condition": {
            "0": "Var_new_1 == 1 and Var_new_4 == 7",
            "1": "Var_new_1 == 1 and Var_new_9 == 12"
        },
        "True": {
            "0": "{'Var_new_1': [(1, 2)], 'Var_new_4': [(7, 8)]}",
            "1": "{'Var_new_1': [(1, 2)], 'Var_new_9': [(12, 13)]}"
        },
        "False": {
            "0": "{'Var_new_1': [(-4, 1), (2, 7)], 'Var_new_4': [(2, 7), (8, 13)]}",
            "1": "{'Var_new_1': [(-4, 1), (2, 7)], 'Var_new_9': [(7, 12), (13, 18)]}"
        }
    }
}
```     
- similarly we can get **ELABORATE** results in the form of **MARKDOWN**

## UI (frontend service using flask)

- run the script using the command **python37 frontend.py** in path *UI/*
- enter the condition in the text box shown in **http://127.0.0.1:5000/**

![](https://github.com/Palani-SN/LogExAnWebApp/blob/main/HomePage.JPG?raw=true)

- click Solve to get the results as Image

![](https://github.com/Palani-SN/LogExAnWebApp/blob/main/OutputImage.JPG?raw=true)

- click Download to get the download the Image


