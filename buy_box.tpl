        ...
        {if $sArticle.sProperties}
            <div class="product--properties panel">
                    {foreach $sArticle.sProperties as $sProperty}
                            <div class="lr_property">
                            {* Property label *}
                            {block name='frontend_detail_description_properties_label'}
                                {* <p class="product--properties-label is--bold">{$sProperty.name|escape}</p> *}
                            {/block}

                            {* Property content *}
                            {block name='frontend_detail_description_properties_content'}

                                {foreach $sProperty.values as $fkey => $fvalue}
                                  <div class="product--properties-value">
                                    {if ($sProperty.media[$fkey].source)}
                                      <div class="prop-value-wrap">
                                        <div class="prop-value-name">
                                          {$sProperty.values[$fkey]}
                                        </div>
                                        <img src="{$sProperty.media[$fkey].source}" alt="{$sProperty.name}" width="35" />

                                      </div>
                                    {else}
                                     <strong>{$sProperty.name}</strong>  {$sProperty.value|escape}
                                    {/if}
                                  </div>
                                {/foreach}

                            {/block}
                            </div>
                    {/foreach}
            </div>
        {/if}
        ...
