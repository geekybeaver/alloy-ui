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
java.lang.String NAMESPACE = "alloy:dialog:";

Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("alloy:dialog:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("alloy:dialog:scopedAttributes");

Map<String, Object> options = new HashMap<String, Object>();

options.putAll(scopedAttributes);
options.putAll(dynamicAttributes);

%>

<%@ include file="/html/taglib/alloy/init-alloy.jsp" %>

<%
java.util.HashMap _align = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:dialog:align")));
java.lang.String _dialogBodyContent = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:dialog:dialogBodyContent"));
java.util.ArrayList _buttons = JSONFactoryUtil.getArrayList(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:dialog:buttons"), "[]"));
java.lang.Object _centered = (java.lang.Object)request.getAttribute("alloy:dialog:centered");
java.lang.Boolean _close = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:close"), true);
java.lang.Boolean _collapsed = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:collapsed"), false);
java.lang.Boolean _collapsible = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:collapsible"), false);
java.lang.Object _constrain = (java.lang.Object)request.getAttribute("alloy:dialog:constrain");
java.util.HashMap _constrain2view = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:dialog:constrain2view")));
java.lang.String _cssClass = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:dialog:cssClass"));
java.lang.Boolean _destroyOnClose = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:destroyOnClose"), false);
java.lang.Boolean _destroyed = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:destroyed"), false);
java.lang.Boolean _disabled = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:disabled"), false);
java.lang.Object _dragInstance = (java.lang.Object)request.getAttribute("alloy:dialog:dragInstance");
java.lang.Boolean _draggable = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:draggable"), true);
java.lang.Object _fillHeight = (java.lang.Object)request.getAttribute("alloy:dialog:fillHeight");
java.lang.Boolean _focused = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:focused"), false);
java.lang.Object _footerContent = (java.lang.Object)request.getAttribute("alloy:dialog:footerContent");
java.lang.Object _headerContent = (java.lang.Object)request.getAttribute("alloy:dialog:headerContent");
java.lang.Object _height = (java.lang.Object)request.getAttribute("alloy:dialog:height");
java.lang.String _hideClass = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:dialog:hideClass"), "aui-helper-hidden");
java.util.ArrayList _icons = JSONFactoryUtil.getArrayList(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:dialog:icons"), "[]"));
java.lang.String _dialogId = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:dialog:dialogId"));
java.lang.Boolean _initialized = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:initialized"), false);
java.lang.Boolean _modal = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:modal"), false);
java.lang.Boolean _preventOverlap = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:preventOverlap"), false);
java.lang.Object _render = (java.lang.Object)request.getAttribute("alloy:dialog:render");
java.lang.Boolean _rendered = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:rendered"), false);
java.lang.Boolean _resizable = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:resizable"), true);
java.lang.Object _resizableInstance = (java.lang.Object)request.getAttribute("alloy:dialog:resizableInstance");
java.lang.Boolean _shim = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:shim"), false);
java.lang.Boolean _stack = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:stack"), true);
java.util.HashMap _strings = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:dialog:strings")));
java.lang.Number _tabIndex = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:dialog:tabIndex")), 0);
java.lang.Object _title = (java.lang.Object)request.getAttribute("alloy:dialog:title");
java.lang.Boolean _visible = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:dialog:visible"), true);
java.lang.Object _width = (java.lang.Object)request.getAttribute("alloy:dialog:width");
java.lang.Number _x = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:dialog:x")), 0);
java.util.ArrayList _xy = JSONFactoryUtil.getArrayList(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:dialog:xy"), "[0,0]"));
java.lang.Number _y = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:dialog:y")), 0);
java.lang.Number _zIndex = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:dialog:zIndex")), 0);
java.lang.Object _afterAlignChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterAlignChange");
java.lang.Object _afterBodyContentChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterBodyContentChange");
java.lang.Object _afterBoundingBoxChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterBoundingBoxChange");
java.lang.Object _afterButtonsChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterButtonsChange");
java.lang.Object _afterCenteredChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterCenteredChange");
java.lang.Object _afterCloseChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterCloseChange");
java.lang.Object _afterCollapsedChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterCollapsedChange");
java.lang.Object _afterCollapsibleChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterCollapsibleChange");
java.lang.Object _afterConstrain2viewChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterConstrain2viewChange");
java.lang.Object _afterConstrainChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterConstrainChange");
java.lang.Object _afterContentBoxChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterContentBoxChange");
java.lang.Object _afterCssClassChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterCssClassChange");
java.lang.Object _afterDestroy = (java.lang.Object)request.getAttribute("alloy:dialog:afterDestroy");
java.lang.Object _afterDestroyOnCloseChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterDestroyOnCloseChange");
java.lang.Object _afterDestroyedChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterDestroyedChange");
java.lang.Object _afterDisabledChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterDisabledChange");
java.lang.Object _afterDragInstanceChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterDragInstanceChange");
java.lang.Object _afterDraggableChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterDraggableChange");
java.lang.Object _afterFillHeightChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterFillHeightChange");
java.lang.Object _afterFocusedChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterFocusedChange");
java.lang.Object _afterFooterContentChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterFooterContentChange");
java.lang.Object _afterHeaderContentChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterHeaderContentChange");
java.lang.Object _afterHeightChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterHeightChange");
java.lang.Object _afterHideClassChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterHideClassChange");
java.lang.Object _afterIconsChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterIconsChange");
java.lang.Object _afterIdChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterIdChange");
java.lang.Object _afterInit = (java.lang.Object)request.getAttribute("alloy:dialog:afterInit");
java.lang.Object _afterInitializedChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterInitializedChange");
java.lang.Object _afterModalChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterModalChange");
java.lang.Object _afterPreventOverlapChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterPreventOverlapChange");
java.lang.Object _afterRenderChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterRenderChange");
java.lang.Object _afterRenderedChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterRenderedChange");
java.lang.Object _afterResizableChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterResizableChange");
java.lang.Object _afterResizableInstanceChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterResizableInstanceChange");
java.lang.Object _afterShimChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterShimChange");
java.lang.Object _afterSrcNodeChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterSrcNodeChange");
java.lang.Object _afterStackChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterStackChange");
java.lang.Object _afterStringsChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterStringsChange");
java.lang.Object _afterTabIndexChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterTabIndexChange");
java.lang.Object _afterTitleChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterTitleChange");
java.lang.Object _afterVisibleChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterVisibleChange");
java.lang.Object _afterContentUpdate = (java.lang.Object)request.getAttribute("alloy:dialog:afterContentUpdate");
java.lang.Object _afterRender = (java.lang.Object)request.getAttribute("alloy:dialog:afterRender");
java.lang.Object _afterWidthChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterWidthChange");
java.lang.Object _afterXChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterXChange");
java.lang.Object _afterXyChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterXyChange");
java.lang.Object _afterYChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterYChange");
java.lang.Object _afterZIndexChange = (java.lang.Object)request.getAttribute("alloy:dialog:afterZIndexChange");
java.lang.Object _onAlignChange = (java.lang.Object)request.getAttribute("alloy:dialog:onAlignChange");
java.lang.Object _onBodyContentChange = (java.lang.Object)request.getAttribute("alloy:dialog:onBodyContentChange");
java.lang.Object _onBoundingBoxChange = (java.lang.Object)request.getAttribute("alloy:dialog:onBoundingBoxChange");
java.lang.Object _onButtonsChange = (java.lang.Object)request.getAttribute("alloy:dialog:onButtonsChange");
java.lang.Object _onCenteredChange = (java.lang.Object)request.getAttribute("alloy:dialog:onCenteredChange");
java.lang.Object _onCloseChange = (java.lang.Object)request.getAttribute("alloy:dialog:onCloseChange");
java.lang.Object _onCollapsedChange = (java.lang.Object)request.getAttribute("alloy:dialog:onCollapsedChange");
java.lang.Object _onCollapsibleChange = (java.lang.Object)request.getAttribute("alloy:dialog:onCollapsibleChange");
java.lang.Object _onConstrain2viewChange = (java.lang.Object)request.getAttribute("alloy:dialog:onConstrain2viewChange");
java.lang.Object _onConstrainChange = (java.lang.Object)request.getAttribute("alloy:dialog:onConstrainChange");
java.lang.Object _onContentBoxChange = (java.lang.Object)request.getAttribute("alloy:dialog:onContentBoxChange");
java.lang.Object _onCssClassChange = (java.lang.Object)request.getAttribute("alloy:dialog:onCssClassChange");
java.lang.Object _onDestroy = (java.lang.Object)request.getAttribute("alloy:dialog:onDestroy");
java.lang.Object _onDestroyOnCloseChange = (java.lang.Object)request.getAttribute("alloy:dialog:onDestroyOnCloseChange");
java.lang.Object _onDestroyedChange = (java.lang.Object)request.getAttribute("alloy:dialog:onDestroyedChange");
java.lang.Object _onDisabledChange = (java.lang.Object)request.getAttribute("alloy:dialog:onDisabledChange");
java.lang.Object _onDragInstanceChange = (java.lang.Object)request.getAttribute("alloy:dialog:onDragInstanceChange");
java.lang.Object _onDraggableChange = (java.lang.Object)request.getAttribute("alloy:dialog:onDraggableChange");
java.lang.Object _onFillHeightChange = (java.lang.Object)request.getAttribute("alloy:dialog:onFillHeightChange");
java.lang.Object _onFocusedChange = (java.lang.Object)request.getAttribute("alloy:dialog:onFocusedChange");
java.lang.Object _onFooterContentChange = (java.lang.Object)request.getAttribute("alloy:dialog:onFooterContentChange");
java.lang.Object _onHeaderContentChange = (java.lang.Object)request.getAttribute("alloy:dialog:onHeaderContentChange");
java.lang.Object _onHeightChange = (java.lang.Object)request.getAttribute("alloy:dialog:onHeightChange");
java.lang.Object _onHideClassChange = (java.lang.Object)request.getAttribute("alloy:dialog:onHideClassChange");
java.lang.Object _onIconsChange = (java.lang.Object)request.getAttribute("alloy:dialog:onIconsChange");
java.lang.Object _onIdChange = (java.lang.Object)request.getAttribute("alloy:dialog:onIdChange");
java.lang.Object _onInit = (java.lang.Object)request.getAttribute("alloy:dialog:onInit");
java.lang.Object _onInitializedChange = (java.lang.Object)request.getAttribute("alloy:dialog:onInitializedChange");
java.lang.Object _onModalChange = (java.lang.Object)request.getAttribute("alloy:dialog:onModalChange");
java.lang.Object _onPreventOverlapChange = (java.lang.Object)request.getAttribute("alloy:dialog:onPreventOverlapChange");
java.lang.Object _onRenderChange = (java.lang.Object)request.getAttribute("alloy:dialog:onRenderChange");
java.lang.Object _onRenderedChange = (java.lang.Object)request.getAttribute("alloy:dialog:onRenderedChange");
java.lang.Object _onResizableChange = (java.lang.Object)request.getAttribute("alloy:dialog:onResizableChange");
java.lang.Object _onResizableInstanceChange = (java.lang.Object)request.getAttribute("alloy:dialog:onResizableInstanceChange");
java.lang.Object _onShimChange = (java.lang.Object)request.getAttribute("alloy:dialog:onShimChange");
java.lang.Object _onSrcNodeChange = (java.lang.Object)request.getAttribute("alloy:dialog:onSrcNodeChange");
java.lang.Object _onStackChange = (java.lang.Object)request.getAttribute("alloy:dialog:onStackChange");
java.lang.Object _onStringsChange = (java.lang.Object)request.getAttribute("alloy:dialog:onStringsChange");
java.lang.Object _onTabIndexChange = (java.lang.Object)request.getAttribute("alloy:dialog:onTabIndexChange");
java.lang.Object _onTitleChange = (java.lang.Object)request.getAttribute("alloy:dialog:onTitleChange");
java.lang.Object _onVisibleChange = (java.lang.Object)request.getAttribute("alloy:dialog:onVisibleChange");
java.lang.Object _onContentUpdate = (java.lang.Object)request.getAttribute("alloy:dialog:onContentUpdate");
java.lang.Object _onRender = (java.lang.Object)request.getAttribute("alloy:dialog:onRender");
java.lang.Object _onWidthChange = (java.lang.Object)request.getAttribute("alloy:dialog:onWidthChange");
java.lang.Object _onXChange = (java.lang.Object)request.getAttribute("alloy:dialog:onXChange");
java.lang.Object _onXyChange = (java.lang.Object)request.getAttribute("alloy:dialog:onXyChange");
java.lang.Object _onYChange = (java.lang.Object)request.getAttribute("alloy:dialog:onYChange");
java.lang.Object _onZIndexChange = (java.lang.Object)request.getAttribute("alloy:dialog:onZIndexChange");

_updateOptions(options, "align", _align);
_updateOptions(options, "dialogBodyContent", _dialogBodyContent);
_updateOptions(options, "boundingBox", _boundingBox);
_updateOptions(options, "buttons", _buttons);
_updateOptions(options, "centered", _centered);
_updateOptions(options, "close", _close);
_updateOptions(options, "collapsed", _collapsed);
_updateOptions(options, "collapsible", _collapsible);
_updateOptions(options, "constrain", _constrain);
_updateOptions(options, "constrain2view", _constrain2view);
_updateOptions(options, "contentBox", _contentBox);
_updateOptions(options, "cssClass", _cssClass);
_updateOptions(options, "destroyOnClose", _destroyOnClose);
_updateOptions(options, "destroyed", _destroyed);
_updateOptions(options, "disabled", _disabled);
_updateOptions(options, "dragInstance", _dragInstance);
_updateOptions(options, "draggable", _draggable);
_updateOptions(options, "fillHeight", _fillHeight);
_updateOptions(options, "focused", _focused);
_updateOptions(options, "footerContent", _footerContent);
_updateOptions(options, "headerContent", _headerContent);
_updateOptions(options, "height", _height);
_updateOptions(options, "hideClass", _hideClass);
_updateOptions(options, "icons", _icons);
_updateOptions(options, "dialogId", _dialogId);
_updateOptions(options, "initialized", _initialized);
_updateOptions(options, "modal", _modal);
_updateOptions(options, "preventOverlap", _preventOverlap);
_updateOptions(options, "render", _render);
_updateOptions(options, "rendered", _rendered);
_updateOptions(options, "resizable", _resizable);
_updateOptions(options, "resizableInstance", _resizableInstance);
_updateOptions(options, "shim", _shim);
_updateOptions(options, "srcNode", _srcNode);
_updateOptions(options, "stack", _stack);
_updateOptions(options, "strings", _strings);
_updateOptions(options, "tabIndex", _tabIndex);
_updateOptions(options, "title", _title);
_updateOptions(options, "visible", _visible);
_updateOptions(options, "width", _width);
_updateOptions(options, "x", _x);
_updateOptions(options, "xy", _xy);
_updateOptions(options, "y", _y);
_updateOptions(options, "zIndex", _zIndex);
_updateOptions(options, "afterAlignChange", _afterAlignChange);
_updateOptions(options, "afterBodyContentChange", _afterBodyContentChange);
_updateOptions(options, "afterBoundingBoxChange", _afterBoundingBoxChange);
_updateOptions(options, "afterButtonsChange", _afterButtonsChange);
_updateOptions(options, "afterCenteredChange", _afterCenteredChange);
_updateOptions(options, "afterCloseChange", _afterCloseChange);
_updateOptions(options, "afterCollapsedChange", _afterCollapsedChange);
_updateOptions(options, "afterCollapsibleChange", _afterCollapsibleChange);
_updateOptions(options, "afterConstrain2viewChange", _afterConstrain2viewChange);
_updateOptions(options, "afterConstrainChange", _afterConstrainChange);
_updateOptions(options, "afterContentBoxChange", _afterContentBoxChange);
_updateOptions(options, "afterCssClassChange", _afterCssClassChange);
_updateOptions(options, "afterDestroy", _afterDestroy);
_updateOptions(options, "afterDestroyOnCloseChange", _afterDestroyOnCloseChange);
_updateOptions(options, "afterDestroyedChange", _afterDestroyedChange);
_updateOptions(options, "afterDisabledChange", _afterDisabledChange);
_updateOptions(options, "afterDragInstanceChange", _afterDragInstanceChange);
_updateOptions(options, "afterDraggableChange", _afterDraggableChange);
_updateOptions(options, "afterFillHeightChange", _afterFillHeightChange);
_updateOptions(options, "afterFocusedChange", _afterFocusedChange);
_updateOptions(options, "afterFooterContentChange", _afterFooterContentChange);
_updateOptions(options, "afterHeaderContentChange", _afterHeaderContentChange);
_updateOptions(options, "afterHeightChange", _afterHeightChange);
_updateOptions(options, "afterHideClassChange", _afterHideClassChange);
_updateOptions(options, "afterIconsChange", _afterIconsChange);
_updateOptions(options, "afterIdChange", _afterIdChange);
_updateOptions(options, "afterInit", _afterInit);
_updateOptions(options, "afterInitializedChange", _afterInitializedChange);
_updateOptions(options, "afterModalChange", _afterModalChange);
_updateOptions(options, "afterPreventOverlapChange", _afterPreventOverlapChange);
_updateOptions(options, "afterRenderChange", _afterRenderChange);
_updateOptions(options, "afterRenderedChange", _afterRenderedChange);
_updateOptions(options, "afterResizableChange", _afterResizableChange);
_updateOptions(options, "afterResizableInstanceChange", _afterResizableInstanceChange);
_updateOptions(options, "afterShimChange", _afterShimChange);
_updateOptions(options, "afterSrcNodeChange", _afterSrcNodeChange);
_updateOptions(options, "afterStackChange", _afterStackChange);
_updateOptions(options, "afterStringsChange", _afterStringsChange);
_updateOptions(options, "afterTabIndexChange", _afterTabIndexChange);
_updateOptions(options, "afterTitleChange", _afterTitleChange);
_updateOptions(options, "afterVisibleChange", _afterVisibleChange);
_updateOptions(options, "afterContentUpdate", _afterContentUpdate);
_updateOptions(options, "afterRender", _afterRender);
_updateOptions(options, "afterWidthChange", _afterWidthChange);
_updateOptions(options, "afterXChange", _afterXChange);
_updateOptions(options, "afterXyChange", _afterXyChange);
_updateOptions(options, "afterYChange", _afterYChange);
_updateOptions(options, "afterZIndexChange", _afterZIndexChange);
_updateOptions(options, "onAlignChange", _onAlignChange);
_updateOptions(options, "onBodyContentChange", _onBodyContentChange);
_updateOptions(options, "onBoundingBoxChange", _onBoundingBoxChange);
_updateOptions(options, "onButtonsChange", _onButtonsChange);
_updateOptions(options, "onCenteredChange", _onCenteredChange);
_updateOptions(options, "onCloseChange", _onCloseChange);
_updateOptions(options, "onCollapsedChange", _onCollapsedChange);
_updateOptions(options, "onCollapsibleChange", _onCollapsibleChange);
_updateOptions(options, "onConstrain2viewChange", _onConstrain2viewChange);
_updateOptions(options, "onConstrainChange", _onConstrainChange);
_updateOptions(options, "onContentBoxChange", _onContentBoxChange);
_updateOptions(options, "onCssClassChange", _onCssClassChange);
_updateOptions(options, "onDestroy", _onDestroy);
_updateOptions(options, "onDestroyOnCloseChange", _onDestroyOnCloseChange);
_updateOptions(options, "onDestroyedChange", _onDestroyedChange);
_updateOptions(options, "onDisabledChange", _onDisabledChange);
_updateOptions(options, "onDragInstanceChange", _onDragInstanceChange);
_updateOptions(options, "onDraggableChange", _onDraggableChange);
_updateOptions(options, "onFillHeightChange", _onFillHeightChange);
_updateOptions(options, "onFocusedChange", _onFocusedChange);
_updateOptions(options, "onFooterContentChange", _onFooterContentChange);
_updateOptions(options, "onHeaderContentChange", _onHeaderContentChange);
_updateOptions(options, "onHeightChange", _onHeightChange);
_updateOptions(options, "onHideClassChange", _onHideClassChange);
_updateOptions(options, "onIconsChange", _onIconsChange);
_updateOptions(options, "onIdChange", _onIdChange);
_updateOptions(options, "onInit", _onInit);
_updateOptions(options, "onInitializedChange", _onInitializedChange);
_updateOptions(options, "onModalChange", _onModalChange);
_updateOptions(options, "onPreventOverlapChange", _onPreventOverlapChange);
_updateOptions(options, "onRenderChange", _onRenderChange);
_updateOptions(options, "onRenderedChange", _onRenderedChange);
_updateOptions(options, "onResizableChange", _onResizableChange);
_updateOptions(options, "onResizableInstanceChange", _onResizableInstanceChange);
_updateOptions(options, "onShimChange", _onShimChange);
_updateOptions(options, "onSrcNodeChange", _onSrcNodeChange);
_updateOptions(options, "onStackChange", _onStackChange);
_updateOptions(options, "onStringsChange", _onStringsChange);
_updateOptions(options, "onTabIndexChange", _onTabIndexChange);
_updateOptions(options, "onTitleChange", _onTitleChange);
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