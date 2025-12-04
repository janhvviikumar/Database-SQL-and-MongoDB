import pandas as pd

def daily_leads_and_partners(daily_sales: pd.DataFrame) -> pd.DataFrame:
    df=daily_sales
    n=df.groupby(["date_id","make_name"]).nunique().reset_index()
    n.columns = ['date_id', 'make_name', 'unique_leads', 'unique_partners']
    return n

    