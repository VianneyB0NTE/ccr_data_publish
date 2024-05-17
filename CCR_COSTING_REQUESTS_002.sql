{
  "bigquery_view_configuration": {
    "dataset_id": "dl_ccr_kafka2bq_pipeline",
    "dataset_label": "LAKE",
    "description": "CCR costing request for LMES",
    "field_descriptions": [
      {
        "description": "https://adeo.collibra.com/asset/767397bf-72ef-447f-98f9-0a8392b3e8a0",
        "name": "business_unit_identifier_client"
      },
      {
        "description": "https://adeo.collibra.com/asset/54c76802-e0da-4961-af59-0dace7464881",
        "name": "warehouse_identifier"
      },
      {
        "description": "https://adeo.collibra.com/asset/0fc16be0-b871-4ba7-a80c-fdfd30927120",
        "name": "product_adeo_reference"
      },
      {
        "name": "ProductDescription"
      },
      {
        "name": "Mesh"
      },
      {
        "name": "Code"
      },
      {
        "description": "https://adeo.collibra.com/asset/664174d9-b1b9-4bce-8b0f-4f1a36061f60",
        "name": "standard_purchasing_price_value"
      },
      {
        "description": "https://adeo.collibra.com/asset/f20b7590-e999-4e5b-905e-6f35aae802e1",
        "name": "currency_code"
      },
      {
        "name": "SellingCurrency"
      },
      {
        "description": "https://adeo.collibra.com/asset/46648933-7164-4165-96b2-ae7f9da26ab6",
        "name": "partner_identifier"
      },
      {
        "description": "https://adeo.collibra.com/asset/5fb22ec3-e25f-4612-8c70-58f600d138f3",
        "name": "supplier_circuit"
      },
      {
        "description": "https://adeo.collibra.com/asset/5acde985-dca9-49e0-a145-1e8ea48e1587",
        "name": "port_of_loading"
      },
      {
        "description": "https://adeo.collibra.com/asset/f725e583-d10c-497a-bd41-909163116119",
        "name": "port_of_discharge"
      },
      {
        "description": "https://adeo.collibra.com/asset/4b6011f5-e735-4ad2-833f-4d6cc1cc8d1e",
        "name": "purchasing_incoterm_code"
      },
      {
        "description": "https://adeo.collibra.com/asset/4b6011f5-e735-4ad2-833f-4d6cc1cc8d1e",
        "name": "selling_incoterm_code"
      },
      {
        "description": "https://adeo.collibra.com/asset/c00e9b64-f40f-4656-85f1-576b709a3a98",
        "name": "development_mode"
      },
      {
        "description": "https://adeo.collibra.com/asset/4d5d33ce-c973-494f-b5f2-97329f5fed37",
        "name": "palletization_plan_in"
      },
      {
        "description": "https://adeo.collibra.com/asset/4d5d33ce-c973-494f-b5f2-97329f5fed37",
        "name": "palletization_plan_out"
      },
      {
        "description": "https://adeo.collibra.com/asset/4d5d33ce-c973-494f-b5f2-97329f5fed37",
        "name": "palletization_plan_storage"
      },
      {
        "name": "number_of_units"
      },
      {
        "name": "palletization_plan_length"
      },
      {
        "description": "https://adeo.collibra.com/asset/5c1052a7-b7ae-414d-86bd-a0d583f766dc",
        "name": "palletization_plan_width"
      },
      {
        "description": "https://adeo.collibra.com/asset/caa60dae-b83f-4d7c-9795-d6ff897045b7",
        "name": "palletization_plan_height"
      },
      {
        "description": "https://adeo.collibra.com/asset/f33a05d3-47df-4fcf-804f-50b9a1677ad8",
        "name": "palletization_plan_weight_gross"
      },
      {
        "description": "https://adeo.collibra.com/asset/21468bd9-1297-446e-9de8-3183cfd49875",
        "name": "palletization_plan_type"
      },
      {
        "description": "https://adeo.collibra.com/asset/14c40dab-c951-4b85-8ee5-07b758917ee5",
        "name": "palletization_plan_number_of_layers"
      },
      {
        "description": "https://adeo.collibra.com/asset/53e2cb24-48ee-4fee-982b-dcee3b5d4986",
        "name": "season_sales_type"
      },
      {
        "description": "https://adeo.collibra.com/asset/df95e2ce-abbe-4bdd-96ae-5921d63adae4",
        "name": "season_start_date"
      },
      {
        "description": "https://adeo.collibra.com/asset/20480af0-02aa-4edf-b00c-fecd03e22a55",
        "name": "season_end_date"
      },
      {
        "name": "_timestamp"
      }
    ],
    "query": "SELECT  ClientCode AS business_unit_identifier_client,  WarehouseCode AS warehouse_identifier,  ProductId AS product_adeo_reference,  ProductDescription,  a.ProductNomenclature.Mesh AS Mesh,  a.ProductNomenclature.Code AS Code,  PurchasingPrice AS standard_purchasing_price_value,  PurchasingCurrency AS currency_code,  SellingCurrency,  Supplier.Code AS partner_identifier,  Circuit AS supplier_circuit,  PortOfLoading AS port_of_loading,  PortOfDischarge AS port_of_discharge,  PurchasingIncoterm AS purchasing_incoterm_code,  SellingIncoterm AS selling_incoterm_code,  DevelopmentMode AS development_mode,  WhInboundType AS palletization_plan_in,  WhOutboundType AS palletization_plan_out,  WhStorageType AS palletization_plan_storage,  Unit.NumberOfUnits AS number_of_units,  Unit.Length AS palletization_plan_length, Unit.Width AS palletization_plan_width,  Unit.Height AS palletization_plan_height,  Unit.WeightGross AS palletization_plan_weight_gross,  Pallet.Type AS palletization_plan_type,  Pallet.Layer.NumberOfLayers AS palletization_plan_number_of_layers,  OverriddenData.Season.SalesType as season_sales_type,  DATE(OverriddenData.Season.StartDate) as season_start_date,  DATE(OverriddenData.Season.EndDate) as season_end_date, _timestamp as _timestamp FROM  `dfdp-ccr-team-pprod.cost_component_repository_dataset.adeo_preprod_europe_west1_APP_CCR_ALL_ALL_P1_C2_COSTING_REQUEST_V2_com_adeo_costing_exchange_avro_model_costing_request_v3_CostingRequestPayload` a WHERE  ClientCode = '2'",
    "view_id": "CCR_COSTING_REQUESTS_002"
  },
  "id": "dfdp-ccr-team-pprod.dl_ccr_kafka2bq_pipeline.CCR_COSTING_REQUESTS_002",
  "metadata": {
    "request_id": "5607a437-10bd-4cce-bd01-5d4c4b290787",
    "sources": [
      {
        "fqn": "dfdp-ccr-team-pprod.cost_component_repository_dataset.adeo_preprod_europe_west1_APP_CCR_ALL_ALL_P1_C2_COSTING_REQUEST_V2_com_adeo_costing_exchange_avro_model_costing_request_v3_CostingRequestPayload",
        "pipeline_component_id": null,
        "resource_type": null
      }
    ]
  },
  "type": "BIGQUERY_VIEW"
}