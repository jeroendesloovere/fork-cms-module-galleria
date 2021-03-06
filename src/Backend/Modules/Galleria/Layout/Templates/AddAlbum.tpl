{include:{$BACKEND_CORE_PATH}/Layout/Templates/Head.tpl}
{include:{$BACKEND_CORE_PATH}/Layout/Templates/StructureStartModule.tpl}

<div class="pageTitle">
	<h2>{$lblGalleria|ucfirst}: {$lblAddAlbum}</h2>
</div>
{form:add_album}
    <div id="pageUrl">
        <div class="oneLiner">
            {option:detailURL}<p><span><a href="{$detailURL}">{$detailURL}/<span id="generatedUrl"></span></a></span>
            </p>{/option:detailURL}
            {option:!detailURL}<p class="infoMessage">{$errNoModuleLinked}</p>{/option:!detailURL}
        </div>
    </div>
		<div class="ui-tabs">
			<div class="ui-tabs-panel">
				<div class="options">
					<table border="0" cellspacing="0" cellpadding="0" width="100%">
						<tr>
							<td id="leftColumn">
								<div class="box">
									<div class="optionsRTE">
										<p>
											<label for="title">{$lblTitle|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
											{$txtTitle} {$txtTitleError}
										</p>
									</div>
									<div class="heading">
										<h3>
											<label for="text">{$lblDescription|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
										</h3>
									</div>
									<div class="optionsRTE">
										{$txtDescription} {$txtDescriptionError}
									</div>
								</div>
							</td>
							<td id="sidebar">
								<div id="publishOptions" class="box">
									<div class="heading">
										<h3>{$lblCategory|ucfirst}</h3>
									</div>
									<div class="options">
										{$ddmCategory}
									</div>
								</div>
								<div id="publishOptions" class="box">
									<div class="heading">
										<h3>{$lblStatus|ucfirst}</h3>
									</div>
									<div class="options">
										<ul class="inputList">
											{iteration:hidden}
											<li>
												{$hidden.rbtHidden}
												<label for="{$hidden.id}">{$hidden.label}</label>
											</li>
											{/iteration:hidden}
										</ul>
									</div>
								</div>
                                <div id="publishOptions" class="box">
                                    <div class="heading">
                                        <h3>{$lblShowInOverview|ucfirst}</h3>
                                    </div>
                                    <div class="options">
                                        <ul class="inputList">
                                            {iteration:show_in_overview}
                                                <li>
                                                    {$show_in_overview.rbtShowInOverview}
                                                    <label for="{$show_in_overview.id}">{$show_in_overview.label}</label>
                                                </li>
                                            {/iteration:show_in_overview}
                                        </ul>
                                    </div>
                                </div>
								<div id="publishOptions" class="box">
									<div class="heading">
										<h3>{$lblTags|ucfirst}</h3>
									</div>
									<div class="options">
										<label for="tags">{$lblTags|ucfirst}</label>
										{$txtTags} {$txtTagsError}
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="fullwidthOptions">
			{option:showGalleriaAddAlbum}
			<div class="buttonHolderRight">
				<input id="addButton" class="inputButton button mainButton" type="submit" name="add" value="{$lblSave|ucfirst}" />
			</div>
			{/option:showGalleriaAddAlbum}
		</div>
{/form:add_album}
{include:{$BACKEND_CORE_PATH}/Layout/Templates/StructureEndModule.tpl}
{include:{$BACKEND_CORE_PATH}/Layout/Templates/Footer.tpl}