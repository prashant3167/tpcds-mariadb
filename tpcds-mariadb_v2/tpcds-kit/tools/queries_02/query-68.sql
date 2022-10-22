
-- end query 66 in stream 0 using template query88.tpl
-- start query 67 in stream 0 using template query82.tpl
select  i_item_id
       ,i_item_desc
       ,i_current_price
 from item, inventory, date_dim, store_sales
 where i_current_price between 39 and 39+30
 and inv_item_sk = i_item_sk
 and d_date_sk=inv_date_sk
 and d_date between cast('2001-07-16' as date) and (cast('2001-07-16' as date) +  60 days)
 and i_manufact_id in (43,17,339,936)
 and inv_quantity_on_hand between 100 and 500
 and ss_item_sk = i_item_sk
 group by i_item_id,i_item_desc,i_current_price
 order by i_item_id
 limit 100
