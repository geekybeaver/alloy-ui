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
java.lang.String NAMESPACE = "alloy:loading-mask:";

Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("alloy:loading-mask:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("alloy:loading-mask:scopedAttributes");

Map<String, Object> options = new HashMap<String, Object>();

options.putAll(scopedAttributes);
options.putAll(dynamicAttributes);

%>

<%@ include file="/html/taglib/alloy/init-alloy.jsp" %>

<%
java.lang.Boolean _destroyed = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:loading-mask:destroyed"), false);
java.lang.Object _host = (java.lang.Object)request.getAttribute("alloy:loading-mask:host");
java.lang.Boolean _initialized = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:loading-mask:initialized"), false);
java.lang.String _messageEl = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:loading-mask:messageEl"));
java.util.HashMap _strings = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:loading-mask:strings"), "{ loading: 'Loading&hellip;' }"));
java.lang.Object _target = (java.lang.Object)request.getAttribute("alloy:loading-mask:target");
java.lang.Object _afterDestroy = (java.lang.Object)request.getAttribute("alloy:loading-mask:afterDestroy");
java.lang.Object _afterDestroyedChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:afterDestroyedChange");
java.lang.Object _afterHostChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:afterHostChange");
java.lang.Object _afterInit = (java.lang.Object)request.getAttribute("alloy:loading-mask:afterInit");
java.lang.Object _afterInitializedChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:afterInitializedChange");
java.lang.Object _afterMessageElChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:afterMessageElChange");
java.lang.Object _afterStringsChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:afterStringsChange");
java.lang.Object _afterTargetChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:afterTargetChange");
java.lang.Object _onDestroy = (java.lang.Object)request.getAttribute("alloy:loading-mask:onDestroy");
java.lang.Object _onDestroyedChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:onDestroyedChange");
java.lang.Object _onHostChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:onHostChange");
java.lang.Object _onInit = (java.lang.Object)request.getAttribute("alloy:loading-mask:onInit");
java.lang.Object _onInitializedChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:onInitializedChange");
java.lang.Object _onMessageElChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:onMessageElChange");
java.lang.Object _onStringsChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:onStringsChange");
java.lang.Object _onTargetChange = (java.lang.Object)request.getAttribute("alloy:loading-mask:onTargetChange");

_updateOptions(options, "destroyed", _destroyed);
_updateOptions(options, "host", _host);
_updateOptions(options, "initialized", _initialized);
_updateOptions(options, "messageEl", _messageEl);
_updateOptions(options, "strings", _strings);
_updateOptions(options, "target", _target);
_updateOptions(options, "afterDestroy", _afterDestroy);
_updateOptions(options, "afterDestroyedChange", _afterDestroyedChange);
_updateOptions(options, "afterHostChange", _afterHostChange);
_updateOptions(options, "afterInit", _afterInit);
_updateOptions(options, "afterInitializedChange", _afterInitializedChange);
_updateOptions(options, "afterMessageElChange", _afterMessageElChange);
_updateOptions(options, "afterStringsChange", _afterStringsChange);
_updateOptions(options, "afterTargetChange", _afterTargetChange);
_updateOptions(options, "onDestroy", _onDestroy);
_updateOptions(options, "onDestroyedChange", _onDestroyedChange);
_updateOptions(options, "onHostChange", _onHostChange);
_updateOptions(options, "onInit", _onInit);
_updateOptions(options, "onInitializedChange", _onInitializedChange);
_updateOptions(options, "onMessageElChange", _onMessageElChange);
_updateOptions(options, "onStringsChange", _onStringsChange);
_updateOptions(options, "onTargetChange", _onTargetChange);
%>

<%@ include file="init-ext.jsp" %>