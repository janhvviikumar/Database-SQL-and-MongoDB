import pandas as pd

def duplicate_emails(person: pd.DataFrame) -> pd.DataFrame:
        is_dup = person.duplicated(subset=['email'], keep=False)
        duplicate_r = person[is_dup]
        result = duplicate_r[['email']].drop_duplicates()
        return result