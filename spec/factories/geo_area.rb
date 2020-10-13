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
