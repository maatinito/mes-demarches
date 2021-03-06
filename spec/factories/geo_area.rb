FactoryBot.define do
  factory :geo_area do
    association :champ

    trait :cadastre do
      source { GeoArea.sources.fetch(:cadastre) }
      numero { '42' }
      feuille { 'A11' }
    end

    trait :quartier_prioritaire do
      source { GeoArea.sources.fetch(:quartier_prioritaire) }
      nom { 'XYZ' }
      commune { 'Paris' }
    end

    trait :selection_utilisateur do
      source { GeoArea.sources.fetch(:selection_utilisateur) }
    end

    trait :polygon do
      geometry do
        {
          "type": "Polygon",
          "coordinates": [
            [
              [2.428439855575562, 46.538476837725796],
              [2.4284291267395024, 46.53842148758162],
              [2.4282521009445195, 46.53841410755813],
              [2.42824137210846, 46.53847314771794],
              [2.428284287452698, 46.53847314771794],
              [2.428364753723145, 46.538487907747864],
              [2.4284291267395024, 46.538491597754714],
              [2.428439855575562, 46.538476837725796]
            ]
          ]
        }
      end
    end

    trait :hourglass_polygon do
      geometry do
        {
          "type": "Polygon",
          "coordinates": [
            [
              [2.4282997263522077, 46.53823812531846],
              [2.4283969564289976, 46.53823259028192],
              [2.4283701343391897, 46.53816063476029],
              [2.4284807754604003, 46.53817078233945],
              [2.4284921748487136, 46.53822105895472],
              [2.428447247847828, 46.53820214757286],
              [2.4282997263522077, 46.53823812531846]
            ]
          ]
        }
      end
    end

    trait :polygon_with_extra_coordinate do
      geometry do
        {
          "type": "Polygon",
          "coordinates": [
            [
              [2.428439855575562, 46.538476837725796, 0],
              [2.4284291267395024, 46.53842148758162, 0],
              [2.4282521009445195, 46.53841410755813, 0],
              [2.42824137210846, 46.53847314771794, 0],
              [2.428284287452698, 46.53847314771794, 0],
              [2.428364753723145, 46.538487907747864, 0],
              [2.4284291267395024, 46.538491597754714, 0],
              [2.428439855575562, 46.538476837725796, 0]
            ]
          ]
        }
      end
    end

    trait :invalid_multi_polygon do
      geometry do
        {
          "type": "MultiPolygon",
          "coordinates": [
            [
              [
                [5.894422531127931, 48.22810341752755],
                [5.893049240112306, 48.22427237832278],
                [5.892534255981446, 48.22593062452037],
                [5.892791748046875, 48.2260449843468],
                [5.894422531127931, 48.229933066408215],
                [5.894422531127931, 48.22810341752755]
              ]
            ],
            [
              [
                [5.8950233459472665, 48.229933066408215],
                [5.893478393554688, 48.228961073585126],
                [5.892791748046875, 48.228903896961775],
                [5.892705917358398, 48.230390468407535],
                [5.8950233459472665, 48.229933066408215]
              ]
            ],
            [
              [
                [5.893220901489259, 48.229246955743626],
                [5.893392562866212, 48.22884672027457],
                [5.892705917358398, 48.22878954352343],
                [5.892019271850587, 48.22856083588024],
                [5.892019271850587, 48.2277031731152],
                [5.890989303588868, 48.22787470681807],
                [5.889959335327149, 48.22787470681807],
                [5.890560150146485, 48.22838930447709],
                [5.890645980834962, 48.22878954352343],
                [5.890989303588868, 48.229018250144584],
                [5.892362594604493, 48.22930413198368],
                [5.893220901489259, 48.229246955743626]
              ]
            ]
          ]
        }
      end
    end

    trait :line_string do
      geometry do
        {
          "type": "LineString",
          "coordinates": [
            [2.4282521009445195, 46.53841410755813],
            [2.42824137210846, 46.53847314771794],
            [2.428284287452698, 46.53847314771794],
            [2.4284291267395024, 46.538491597754714]
          ]
        }
      end
    end

    trait :point do
      geometry do
        {
          "type": "Point",
          "coordinates": [2.428439855575562, 46.538476837725796]
        }
      end
    end

    trait :multi_polygon do
      geometry do
        {
          "type": "MultiPolygon",
          "coordinates": [
            [
              [
                [2.428439855575562, 46.538476837725796],
                [2.4284291267395024, 46.53842148758162],
                [2.4282521009445195, 46.53841410755813],
                [2.42824137210846, 46.53847314771794],
                [2.428284287452698, 46.53847314771794],
                [2.428364753723145, 46.538487907747864],
                [2.4284291267395024, 46.538491597754714],
                [2.428439855575562, 46.538476837725796]
              ]
            ]
          ]
        }
      end
    end
  end
end
