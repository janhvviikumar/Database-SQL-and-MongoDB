import pandas as pd

def rearrange_products_table(products: pd.DataFrame) -> pd.DataFrame:
    df=products
    m=pd.melt(df, id_vars=['product_id'], value_vars=["store1","store2","store3"], var_name='store', value_name='price').dropna(how='any')
    return m
    