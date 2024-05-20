SELECT
review_date
FROM
{{ ref('fct_reviews') }} f
join  {{ ref('dim_listings_cleansed') }} dlc 
on f.listing_id = dlc.listing_id
where f.review_date <= dlc.created_at