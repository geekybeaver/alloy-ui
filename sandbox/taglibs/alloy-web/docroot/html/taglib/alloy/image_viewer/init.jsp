<%@ page import="java.io.Serializable"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Locale"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set"%>
<%@ page import="com.liferay.alloy.util.PropsValues"%>
<%@ page import="com.liferay.alloy.util.GetterUtil" %>
<%@ page import="com.liferay.alloy.util.JSONFactoryUtil"%>
<%@ page import="com.liferay.alloy.util.MarkupUtil"%>
<%@ page import="com.liferay.alloy.util.StringUtil"%>
<%@ page import="com.liferay.portal.kernel.servlet.taglib.aui.ScriptData"%>
<%@ page import="com.liferay.portal.kernel.util.StringBundler"%>
<%@ page import="com.liferay.portal.kernel.util.StringPool" %>
<%@ page import="com.liferay.portal.kernel.util.Validator"%>
<%@ page import="org.json.JSONObject" %>
<%@ page import="org.json.JSONArray" %>

<%!
public static void _updateOptions(Map<String, Object> options, String key, Object value) {
	if ((options != null) && options.containsKey(key)) {
		options.put(key, value);
	}
}
%>

<%
java.lang.String NAMESPACE = "alloy:image-viewer:";

Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("alloy:image-viewer:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("alloy:image-viewer:scopedAttributes");

Map<String, Object> options = new HashMap<String, Object>();

options.putAll(scopedAttributes);
options.putAll(dynamicAttributes);

%>

<%@ include file="/html/taglib/alloy/init-alloy.jsp" %>

<%
java.util.HashMap _align = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:image-viewer:align")));
java.lang.Boolean _anim = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:anim"), true);
java.lang.Object _arrowLeftEl = (java.lang.Object)request.getAttribute("alloy:image-viewer:arrowLeftEl");
java.lang.Object _arrowRightEl = (java.lang.Object)request.getAttribute("alloy:image-viewer:arrowRightEl");
java.lang.Object _imageviewerBodyContent = (java.lang.Object)request.getAttribute("alloy:image-viewer:imageviewerBodyContent");
java.lang.String _caption = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:image-viewer:caption"));
java.lang.Object _captionEl = (java.lang.Object)request.getAttribute("alloy:image-viewer:captionEl");
java.lang.Boolean _captionFromTitle = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:captionFromTitle"), true);
java.lang.Boolean _centered = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:centered"), true);
java.lang.Object _closeEl = (java.lang.Object)request.getAttribute("alloy:image-viewer:closeEl");
java.lang.Object _constrain = (java.lang.Object)request.getAttribute("alloy:image-viewer:constrain");
java.lang.String _cssClass = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:image-viewer:cssClass"));
java.lang.Number _currentIndex = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:image-viewer:currentIndex")), 0);
java.lang.Boolean _destroyed = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:destroyed"), false);
java.lang.Boolean _disabled = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:disabled"), false);
java.lang.Object _fillHeight = (java.lang.Object)request.getAttribute("alloy:image-viewer:fillHeight");
java.lang.Boolean _focused = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:focused"), false);
java.lang.Object _footerContent = (java.lang.Object)request.getAttribute("alloy:image-viewer:footerContent");
java.lang.Object _headerContent = (java.lang.Object)request.getAttribute("alloy:image-viewer:headerContent");
java.lang.Object _height = (java.lang.Object)request.getAttribute("alloy:image-viewer:height");
java.lang.String _hideClass = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:image-viewer:hideClass"), "aui-helper-hidden");
java.lang.String _imageviewerId = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:image-viewer:imageviewerId"));
java.lang.Object _image = (java.lang.Object)request.getAttribute("alloy:image-viewer:image");
java.util.HashMap _imageAnim = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:image-viewer:imageAnim")));
java.lang.Object _infoEl = (java.lang.Object)request.getAttribute("alloy:image-viewer:infoEl");
java.lang.String _infoTemplate = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:image-viewer:infoTemplate"), "Image {current} of {total}");
java.lang.Boolean _initialized = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:initialized"), false);
java.lang.Object _links = (java.lang.Object)request.getAttribute("alloy:image-viewer:links");
java.lang.Object _loader = (java.lang.Object)request.getAttribute("alloy:image-viewer:loader");
java.lang.Boolean _loading = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:loading"), false);
java.lang.Object _loadingEl = (java.lang.Object)request.getAttribute("alloy:image-viewer:loadingEl");
java.lang.Number _maxHeight = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:image-viewer:maxHeight")), 2147483647);
java.lang.Number _maxWidth = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:image-viewer:maxWidth")), 2147483647);
java.lang.Object _modal = (java.lang.Object)request.getAttribute("alloy:image-viewer:modal");
java.lang.Boolean _preloadAllImages = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:preloadAllImages"), false);
java.lang.Boolean _preventOverlap = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:preventOverlap"), false);
java.lang.Object _render = (java.lang.Object)request.getAttribute("alloy:image-viewer:render");
java.lang.Boolean _rendered = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:rendered"), false);
java.lang.Boolean _shim = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:shim"), false);
java.lang.Boolean _showArrows = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:showArrows"), true);
java.lang.Boolean _showClose = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:showClose"), true);
java.util.HashMap _strings = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:image-viewer:strings")));
java.lang.Number _tabIndex = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:image-viewer:tabIndex")), 0);
java.lang.Boolean _totalLinks = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:totalLinks"), true);
java.lang.Boolean _visible = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:image-viewer:visible"), true);
java.lang.Object _width = (java.lang.Object)request.getAttribute("alloy:image-viewer:width");
java.lang.Number _x = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:image-viewer:x")), 0);
java.util.ArrayList _xy = JSONFactoryUtil.getArrayList(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:image-viewer:xy"), "[0,0]"));
java.lang.Number _y = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:image-viewer:y")), 0);
java.lang.Number _zIndex = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:image-viewer:zIndex")), 0);
java.lang.Object _afterAlignChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterAlignChange");
java.lang.Object _afterAnim = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterAnim");
java.lang.Object _afterAnimChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterAnimChange");
java.lang.Object _afterArrowLeftElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterArrowLeftElChange");
java.lang.Object _afterArrowRightElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterArrowRightElChange");
java.lang.Object _afterBodyContentChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterBodyContentChange");
java.lang.Object _afterBoundingBoxChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterBoundingBoxChange");
java.lang.Object _afterCaptionChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterCaptionChange");
java.lang.Object _afterCaptionElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterCaptionElChange");
java.lang.Object _afterCaptionFromTitleChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterCaptionFromTitleChange");
java.lang.Object _afterCenteredChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterCenteredChange");
java.lang.Object _afterCloseElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterCloseElChange");
java.lang.Object _afterConstrainChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterConstrainChange");
java.lang.Object _afterContentBoxChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterContentBoxChange");
java.lang.Object _afterCssClassChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterCssClassChange");
java.lang.Object _afterCurrentIndexChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterCurrentIndexChange");
java.lang.Object _afterDestroy = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterDestroy");
java.lang.Object _afterDestroyedChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterDestroyedChange");
java.lang.Object _afterDisabledChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterDisabledChange");
java.lang.Object _afterFillHeightChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterFillHeightChange");
java.lang.Object _afterFocusedChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterFocusedChange");
java.lang.Object _afterFooterContentChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterFooterContentChange");
java.lang.Object _afterHeaderContentChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterHeaderContentChange");
java.lang.Object _afterHeightChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterHeightChange");
java.lang.Object _afterHideClassChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterHideClassChange");
java.lang.Object _afterIdChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterIdChange");
java.lang.Object _afterImageAnimChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterImageAnimChange");
java.lang.Object _afterImageChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterImageChange");
java.lang.Object _afterInfoElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterInfoElChange");
java.lang.Object _afterInfoTemplateChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterInfoTemplateChange");
java.lang.Object _afterInit = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterInit");
java.lang.Object _afterInitializedChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterInitializedChange");
java.lang.Object _afterLinksChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterLinksChange");
java.lang.Object _afterLoad = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterLoad");
java.lang.Object _afterLoaderChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterLoaderChange");
java.lang.Object _afterLoadingChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterLoadingChange");
java.lang.Object _afterLoadingElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterLoadingElChange");
java.lang.Object _afterMaxHeightChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterMaxHeightChange");
java.lang.Object _afterMaxWidthChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterMaxWidthChange");
java.lang.Object _afterModalChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterModalChange");
java.lang.Object _afterPreloadAllImagesChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterPreloadAllImagesChange");
java.lang.Object _afterPreventOverlapChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterPreventOverlapChange");
java.lang.Object _afterRenderChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterRenderChange");
java.lang.Object _afterRenderedChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterRenderedChange");
java.lang.Object _afterRequest = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterRequest");
java.lang.Object _afterShimChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterShimChange");
java.lang.Object _afterShowArrowsChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterShowArrowsChange");
java.lang.Object _afterShowCloseChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterShowCloseChange");
java.lang.Object _afterSrcNodeChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterSrcNodeChange");
java.lang.Object _afterStringsChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterStringsChange");
java.lang.Object _afterTabIndexChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterTabIndexChange");
java.lang.Object _afterTotalLinksChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterTotalLinksChange");
java.lang.Object _afterVisibleChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterVisibleChange");
java.lang.Object _afterContentUpdate = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterContentUpdate");
java.lang.Object _afterRender = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterRender");
java.lang.Object _afterWidthChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterWidthChange");
java.lang.Object _afterXChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterXChange");
java.lang.Object _afterXyChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterXyChange");
java.lang.Object _afterYChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterYChange");
java.lang.Object _afterZIndexChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:afterZIndexChange");
java.lang.Object _onAlignChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onAlignChange");
java.lang.Object _onAnim = (java.lang.Object)request.getAttribute("alloy:image-viewer:onAnim");
java.lang.Object _onAnimChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onAnimChange");
java.lang.Object _onArrowLeftElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onArrowLeftElChange");
java.lang.Object _onArrowRightElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onArrowRightElChange");
java.lang.Object _onBodyContentChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onBodyContentChange");
java.lang.Object _onBoundingBoxChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onBoundingBoxChange");
java.lang.Object _onCaptionChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onCaptionChange");
java.lang.Object _onCaptionElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onCaptionElChange");
java.lang.Object _onCaptionFromTitleChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onCaptionFromTitleChange");
java.lang.Object _onCenteredChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onCenteredChange");
java.lang.Object _onCloseElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onCloseElChange");
java.lang.Object _onConstrainChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onConstrainChange");
java.lang.Object _onContentBoxChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onContentBoxChange");
java.lang.Object _onCssClassChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onCssClassChange");
java.lang.Object _onCurrentIndexChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onCurrentIndexChange");
java.lang.Object _onDestroy = (java.lang.Object)request.getAttribute("alloy:image-viewer:onDestroy");
java.lang.Object _onDestroyedChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onDestroyedChange");
java.lang.Object _onDisabledChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onDisabledChange");
java.lang.Object _onFillHeightChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onFillHeightChange");
java.lang.Object _onFocusedChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onFocusedChange");
java.lang.Object _onFooterContentChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onFooterContentChange");
java.lang.Object _onHeaderContentChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onHeaderContentChange");
java.lang.Object _onHeightChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onHeightChange");
java.lang.Object _onHideClassChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onHideClassChange");
java.lang.Object _onIdChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onIdChange");
java.lang.Object _onImageAnimChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onImageAnimChange");
java.lang.Object _onImageChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onImageChange");
java.lang.Object _onInfoElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onInfoElChange");
java.lang.Object _onInfoTemplateChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onInfoTemplateChange");
java.lang.Object _onInit = (java.lang.Object)request.getAttribute("alloy:image-viewer:onInit");
java.lang.Object _onInitializedChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onInitializedChange");
java.lang.Object _onLinksChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onLinksChange");
java.lang.Object _onLoad = (java.lang.Object)request.getAttribute("alloy:image-viewer:onLoad");
java.lang.Object _onLoaderChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onLoaderChange");
java.lang.Object _onLoadingChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onLoadingChange");
java.lang.Object _onLoadingElChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onLoadingElChange");
java.lang.Object _onMaxHeightChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onMaxHeightChange");
java.lang.Object _onMaxWidthChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onMaxWidthChange");
java.lang.Object _onModalChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onModalChange");
java.lang.Object _onPreloadAllImagesChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onPreloadAllImagesChange");
java.lang.Object _onPreventOverlapChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onPreventOverlapChange");
java.lang.Object _onRenderChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onRenderChange");
java.lang.Object _onRenderedChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onRenderedChange");
java.lang.Object _onRequest = (java.lang.Object)request.getAttribute("alloy:image-viewer:onRequest");
java.lang.Object _onShimChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onShimChange");
java.lang.Object _onShowArrowsChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onShowArrowsChange");
java.lang.Object _onShowCloseChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onShowCloseChange");
java.lang.Object _onSrcNodeChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onSrcNodeChange");
java.lang.Object _onStringsChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onStringsChange");
java.lang.Object _onTabIndexChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onTabIndexChange");
java.lang.Object _onTotalLinksChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onTotalLinksChange");
java.lang.Object _onVisibleChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onVisibleChange");
java.lang.Object _onContentUpdate = (java.lang.Object)request.getAttribute("alloy:image-viewer:onContentUpdate");
java.lang.Object _onRender = (java.lang.Object)request.getAttribute("alloy:image-viewer:onRender");
java.lang.Object _onWidthChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onWidthChange");
java.lang.Object _onXChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onXChange");
java.lang.Object _onXyChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onXyChange");
java.lang.Object _onYChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onYChange");
java.lang.Object _onZIndexChange = (java.lang.Object)request.getAttribute("alloy:image-viewer:onZIndexChange");

_updateOptions(options, "align", _align);
_updateOptions(options, "anim", _anim);
_updateOptions(options, "arrowLeftEl", _arrowLeftEl);
_updateOptions(options, "arrowRightEl", _arrowRightEl);
_updateOptions(options, "imageviewerBodyContent", _imageviewerBodyContent);
_updateOptions(options, "boundingBox", _boundingBox);
_updateOptions(options, "caption", _caption);
_updateOptions(options, "captionEl", _captionEl);
_updateOptions(options, "captionFromTitle", _captionFromTitle);
_updateOptions(options, "centered", _centered);
_updateOptions(options, "closeEl", _closeEl);
_updateOptions(options, "constrain", _constrain);
_updateOptions(options, "contentBox", _contentBox);
_updateOptions(options, "cssClass", _cssClass);
_updateOptions(options, "currentIndex", _currentIndex);
_updateOptions(options, "destroyed", _destroyed);
_updateOptions(options, "disabled", _disabled);
_updateOptions(options, "fillHeight", _fillHeight);
_updateOptions(options, "focused", _focused);
_updateOptions(options, "footerContent", _footerContent);
_updateOptions(options, "headerContent", _headerContent);
_updateOptions(options, "height", _height);
_updateOptions(options, "hideClass", _hideClass);
_updateOptions(options, "imageviewerId", _imageviewerId);
_updateOptions(options, "image", _image);
_updateOptions(options, "imageAnim", _imageAnim);
_updateOptions(options, "infoEl", _infoEl);
_updateOptions(options, "infoTemplate", _infoTemplate);
_updateOptions(options, "initialized", _initialized);
_updateOptions(options, "links", _links);
_updateOptions(options, "loader", _loader);
_updateOptions(options, "loading", _loading);
_updateOptions(options, "loadingEl", _loadingEl);
_updateOptions(options, "maxHeight", _maxHeight);
_updateOptions(options, "maxWidth", _maxWidth);
_updateOptions(options, "modal", _modal);
_updateOptions(options, "preloadAllImages", _preloadAllImages);
_updateOptions(options, "preventOverlap", _preventOverlap);
_updateOptions(options, "render", _render);
_updateOptions(options, "rendered", _rendered);
_updateOptions(options, "shim", _shim);
_updateOptions(options, "showArrows", _showArrows);
_updateOptions(options, "showClose", _showClose);
_updateOptions(options, "srcNode", _srcNode);
_updateOptions(options, "strings", _strings);
_updateOptions(options, "tabIndex", _tabIndex);
_updateOptions(options, "totalLinks", _totalLinks);
_updateOptions(options, "visible", _visible);
_updateOptions(options, "width", _width);
_updateOptions(options, "x", _x);
_updateOptions(options, "xy", _xy);
_updateOptions(options, "y", _y);
_updateOptions(options, "zIndex", _zIndex);
_updateOptions(options, "afterAlignChange", _afterAlignChange);
_updateOptions(options, "afterAnim", _afterAnim);
_updateOptions(options, "afterAnimChange", _afterAnimChange);
_updateOptions(options, "afterArrowLeftElChange", _afterArrowLeftElChange);
_updateOptions(options, "afterArrowRightElChange", _afterArrowRightElChange);
_updateOptions(options, "afterBodyContentChange", _afterBodyContentChange);
_updateOptions(options, "afterBoundingBoxChange", _afterBoundingBoxChange);
_updateOptions(options, "afterCaptionChange", _afterCaptionChange);
_updateOptions(options, "afterCaptionElChange", _afterCaptionElChange);
_updateOptions(options, "afterCaptionFromTitleChange", _afterCaptionFromTitleChange);
_updateOptions(options, "afterCenteredChange", _afterCenteredChange);
_updateOptions(options, "afterCloseElChange", _afterCloseElChange);
_updateOptions(options, "afterConstrainChange", _afterConstrainChange);
_updateOptions(options, "afterContentBoxChange", _afterContentBoxChange);
_updateOptions(options, "afterCssClassChange", _afterCssClassChange);
_updateOptions(options, "afterCurrentIndexChange", _afterCurrentIndexChange);
_updateOptions(options, "afterDestroy", _afterDestroy);
_updateOptions(options, "afterDestroyedChange", _afterDestroyedChange);
_updateOptions(options, "afterDisabledChange", _afterDisabledChange);
_updateOptions(options, "afterFillHeightChange", _afterFillHeightChange);
_updateOptions(options, "afterFocusedChange", _afterFocusedChange);
_updateOptions(options, "afterFooterContentChange", _afterFooterContentChange);
_updateOptions(options, "afterHeaderContentChange", _afterHeaderContentChange);
_updateOptions(options, "afterHeightChange", _afterHeightChange);
_updateOptions(options, "afterHideClassChange", _afterHideClassChange);
_updateOptions(options, "afterIdChange", _afterIdChange);
_updateOptions(options, "afterImageAnimChange", _afterImageAnimChange);
_updateOptions(options, "afterImageChange", _afterImageChange);
_updateOptions(options, "afterInfoElChange", _afterInfoElChange);
_updateOptions(options, "afterInfoTemplateChange", _afterInfoTemplateChange);
_updateOptions(options, "afterInit", _afterInit);
_updateOptions(options, "afterInitializedChange", _afterInitializedChange);
_updateOptions(options, "afterLinksChange", _afterLinksChange);
_updateOptions(options, "afterLoad", _afterLoad);
_updateOptions(options, "afterLoaderChange", _afterLoaderChange);
_updateOptions(options, "afterLoadingChange", _afterLoadingChange);
_updateOptions(options, "afterLoadingElChange", _afterLoadingElChange);
_updateOptions(options, "afterMaxHeightChange", _afterMaxHeightChange);
_updateOptions(options, "afterMaxWidthChange", _afterMaxWidthChange);
_updateOptions(options, "afterModalChange", _afterModalChange);
_updateOptions(options, "afterPreloadAllImagesChange", _afterPreloadAllImagesChange);
_updateOptions(options, "afterPreventOverlapChange", _afterPreventOverlapChange);
_updateOptions(options, "afterRenderChange", _afterRenderChange);
_updateOptions(options, "afterRenderedChange", _afterRenderedChange);
_updateOptions(options, "afterRequest", _afterRequest);
_updateOptions(options, "afterShimChange", _afterShimChange);
_updateOptions(options, "afterShowArrowsChange", _afterShowArrowsChange);
_updateOptions(options, "afterShowCloseChange", _afterShowCloseChange);
_updateOptions(options, "afterSrcNodeChange", _afterSrcNodeChange);
_updateOptions(options, "afterStringsChange", _afterStringsChange);
_updateOptions(options, "afterTabIndexChange", _afterTabIndexChange);
_updateOptions(options, "afterTotalLinksChange", _afterTotalLinksChange);
_updateOptions(options, "afterVisibleChange", _afterVisibleChange);
_updateOptions(options, "afterContentUpdate", _afterContentUpdate);
_updateOptions(options, "afterRender", _afterRender);
_updateOptions(options, "afterWidthChange", _afterWidthChange);
_updateOptions(options, "afterXChange", _afterXChange);
_updateOptions(options, "afterXyChange", _afterXyChange);
_updateOptions(options, "afterYChange", _afterYChange);
_updateOptions(options, "afterZIndexChange", _afterZIndexChange);
_updateOptions(options, "onAlignChange", _onAlignChange);
_updateOptions(options, "onAnim", _onAnim);
_updateOptions(options, "onAnimChange", _onAnimChange);
_updateOptions(options, "onArrowLeftElChange", _onArrowLeftElChange);
_updateOptions(options, "onArrowRightElChange", _onArrowRightElChange);
_updateOptions(options, "onBodyContentChange", _onBodyContentChange);
_updateOptions(options, "onBoundingBoxChange", _onBoundingBoxChange);
_updateOptions(options, "onCaptionChange", _onCaptionChange);
_updateOptions(options, "onCaptionElChange", _onCaptionElChange);
_updateOptions(options, "onCaptionFromTitleChange", _onCaptionFromTitleChange);
_updateOptions(options, "onCenteredChange", _onCenteredChange);
_updateOptions(options, "onCloseElChange", _onCloseElChange);
_updateOptions(options, "onConstrainChange", _onConstrainChange);
_updateOptions(options, "onContentBoxChange", _onContentBoxChange);
_updateOptions(options, "onCssClassChange", _onCssClassChange);
_updateOptions(options, "onCurrentIndexChange", _onCurrentIndexChange);
_updateOptions(options, "onDestroy", _onDestroy);
_updateOptions(options, "onDestroyedChange", _onDestroyedChange);
_updateOptions(options, "onDisabledChange", _onDisabledChange);
_updateOptions(options, "onFillHeightChange", _onFillHeightChange);
_updateOptions(options, "onFocusedChange", _onFocusedChange);
_updateOptions(options, "onFooterContentChange", _onFooterContentChange);
_updateOptions(options, "onHeaderContentChange", _onHeaderContentChange);
_updateOptions(options, "onHeightChange", _onHeightChange);
_updateOptions(options, "onHideClassChange", _onHideClassChange);
_updateOptions(options, "onIdChange", _onIdChange);
_updateOptions(options, "onImageAnimChange", _onImageAnimChange);
_updateOptions(options, "onImageChange", _onImageChange);
_updateOptions(options, "onInfoElChange", _onInfoElChange);
_updateOptions(options, "onInfoTemplateChange", _onInfoTemplateChange);
_updateOptions(options, "onInit", _onInit);
_updateOptions(options, "onInitializedChange", _onInitializedChange);
_updateOptions(options, "onLinksChange", _onLinksChange);
_updateOptions(options, "onLoad", _onLoad);
_updateOptions(options, "onLoaderChange", _onLoaderChange);
_updateOptions(options, "onLoadingChange", _onLoadingChange);
_updateOptions(options, "onLoadingElChange", _onLoadingElChange);
_updateOptions(options, "onMaxHeightChange", _onMaxHeightChange);
_updateOptions(options, "onMaxWidthChange", _onMaxWidthChange);
_updateOptions(options, "onModalChange", _onModalChange);
_updateOptions(options, "onPreloadAllImagesChange", _onPreloadAllImagesChange);
_updateOptions(options, "onPreventOverlapChange", _onPreventOverlapChange);
_updateOptions(options, "onRenderChange", _onRenderChange);
_updateOptions(options, "onRenderedChange", _onRenderedChange);
_updateOptions(options, "onRequest", _onRequest);
_updateOptions(options, "onShimChange", _onShimChange);
_updateOptions(options, "onShowArrowsChange", _onShowArrowsChange);
_updateOptions(options, "onShowCloseChange", _onShowCloseChange);
_updateOptions(options, "onSrcNodeChange", _onSrcNodeChange);
_updateOptions(options, "onStringsChange", _onStringsChange);
_updateOptions(options, "onTabIndexChange", _onTabIndexChange);
_updateOptions(options, "onTotalLinksChange", _onTotalLinksChange);
_updateOptions(options, "onVisibleChange", _onVisibleChange);
_updateOptions(options, "onContentUpdate", _onContentUpdate);
_updateOptions(options, "onRender", _onRender);
_updateOptions(options, "onWidthChange", _onWidthChange);
_updateOptions(options, "onXChange", _onXChange);
_updateOptions(options, "onXyChange", _onXyChange);
_updateOptions(options, "onYChange", _onYChange);
_updateOptions(options, "onZIndexChange", _onZIndexChange);
%>

<%@ include file="init-ext.jsp" %>