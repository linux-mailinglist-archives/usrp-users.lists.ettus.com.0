Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7550E4AEA44
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 07:26:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C41B384A52
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 01:26:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="IQmRMgrH";
	dkim-atps=neutral
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 512AC3849A8
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 01:25:30 -0500 (EST)
Received: by mail-vs1-f53.google.com with SMTP id j21so1474903vsg.6
        for <usrp-users@lists.ettus.com>; Tue, 08 Feb 2022 22:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kRlcYmZulvNUZno/XHeNtu267wCxkm3XYv2SudzAzkI=;
        b=IQmRMgrHOrrpul6evXRDqO2vOkPuvU8Ep4Lrvw5zZNOB7rY/8TMLshV5JLBKfRVP5W
         noX5kNg5/x/pBJ0lPpsisX/xqrH6e1sghw01PKpW6we/KmtT/pv2pxdkm9CBSdODnfR7
         +9t7/6sqabq5VpNFprjYoyJRa/QaNtiQQvvnon/wwAv0OrqK97n9Izph5vcZA98xYJJb
         b9izRvLA0ID2OB1EEPtODjsvbpW0VvFwL4/wRNRi/n+rIeWcUU5AqWJEBdYj/IB/6rvp
         +j4hYh8iG44n8v9wlfoGV6yKODAEZxp68Qm391/TWEiSsIV6smKtcloZkzS5XPU2Lyvd
         V9vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kRlcYmZulvNUZno/XHeNtu267wCxkm3XYv2SudzAzkI=;
        b=BtmuJUhWJgsQiY/QtE3MfNYW43haC1uyvoV4q714XEQ8022AGQ1yRVxzQa+1cYOIwC
         cI/ktdtkutYFNSvew14/ZQk+YT0VlyGSMsysLK68Rp6XaADNcUAQH2zYzyU74vTf6VI1
         Fk5HTe4iz6UiAlFWwfmPeIs63HBoKOQgkMn4EWGsKMNU/LImvnxX298pXpbhfJKt9FpL
         R7pnGkRGG7FwIzGPWm8ZQsi7HfBDB4myD5+8ZY3RYX6I/8Zp4MyRXCuVWlJkrPL7F6Xw
         t5YEb84xeYaCoypdcf/O46u+OW+l31BPTDreT0nlyYfeuzoaFzrRILSw5l4MF7XkW9/t
         twow==
X-Gm-Message-State: AOAM530TXJWEgKllz5oPeMQnN+QilN2lyU0Yl6z8NCwwGTi2Sl5dWTlF
	+PHIGcGdhyceIlXfR973CRINY2acLqTpvYGHISf2AuM5
X-Google-Smtp-Source: ABdhPJyate8Qcr9+jPkfwx7AwROUoxYUCQpqgNWOh+rZK9qZwunwvOIr4RTA5/zsYVKNJqUVosJxQX9t+Blmxe6E1jA=
X-Received: by 2002:a05:6102:1611:: with SMTP id cu17mr227740vsb.59.1644387929578;
 Tue, 08 Feb 2022 22:25:29 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQtKRTNS+zMLKPS=i1YRUbJRmb4ofG=g0xhKuC383hU0Q@mail.gmail.com>
In-Reply-To: <CAB__hTQtKRTNS+zMLKPS=i1YRUbJRmb4ofG=g0xhKuC383hU0Q@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 9 Feb 2022 01:24:53 -0500
Message-ID: <CAL7q81v=oCQAeCWGETXKsUMG-_JKfPv1dum+8o6uEm_CosHSLg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: Y5BLYZYH3BSASAC2PW562QSDCWKZNAO3
X-Message-ID-Hash: Y5BLYZYH3BSASAC2PW562QSDCWKZNAO3
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block propagation Bug?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y5BLYZYH3BSASAC2PW562QSDCWKZNAO3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5026092324520224990=="

--===============5026092324520224990==
Content-Type: multipart/alternative; boundary="0000000000006a779105d78fe65c"

--0000000000006a779105d78fe65c
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

3) I see that on 'master', the Replay block was modified to change the
> default forwarding to Drop. Perhaps this would fix the issue, but it
> doesn't seem like it given that the Radio is already set to Drop.


I can't explain why when using different ports you still get the
propagation error, but I'd highly suggest giving the master branch a try.
It fixed the case you are describing when using the same port.

Jonathon

On Wed, Feb 9, 2022 at 12:22 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi,
> I created a simple example that implements an RFNoC graph between the
> Replay block and the Radio block on an N310 using UHD 4.1.0.5.  The idea is
> that Replay Port 0 connects to the Tx Radio for playing out samples and
> then the same Rx Radio connects to Replay Port 1 for capturing the Rx
> samples.  The simple source code is included at the bottom of this email
> with the relevant part highlighted.
>
> The example produces the error message below which indicates a circular
> graph, I think. I can fix it by replacing the "connect_through_blocks()"
> with "graph->connect()" and skipping property propagation on one connection.
>
> I do not understand why this graph as-is causes a propagation error. Here
> are some remarks:
> 1) The Replay port numbers are different.  Given that the Replay
> controller on branch 4.1 does not modify the default forwarding and that
> the default forwarding is One-to-One, it seems that different port numbers
> should not cause a circular propagation.
> 2) Additionally, given that the Radio block sets its forwarding to Drop,
> it seems that there shouldn't be an issue even if the Replay block port
> numbers were the same.
> 3) I see that on 'master', the Replay block was modified to change the
> default forwarding to Drop. Perhaps this would fix the issue, but it
> doesn't seem like it given that the Radio is already set to Drop.
>
> Please let me know if you know why this graph causes an error.
> Rob
>
> // Console ERROR
> [ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -> 0/Replay#0:1
> without disabling property_propagation_active will lead to unresolvable
> graph!
> Error: RfnocError: Adding edge without disabling
> property_propagation_active will lead to unresolvable graph!
>
> // Example APPLICATION
> #include <uhd/rfnoc/block_id.hpp>
> #include <uhd/rfnoc/radio_control.hpp>
> #include <uhd/rfnoc/replay_block_control.hpp>
> #include <uhd/rfnoc_graph.hpp>
> #include <uhd/utils/graph_utils.hpp>
> #include <uhd/utils/safe_main.hpp>
> #include <boost/program_options.hpp>
>
> namespace po = boost::program_options;
>
> using std::cout;
> using std::endl;
>
> int UHD_SAFE_MAIN(int argc, char* argv[])
> {
> std::string args;
>
> po::options_description desc("Allowed Options");
> // clang-format off
> desc.add_options()
> ("help", "help message")
> ("args", po::value<std::string>(&args)->default_value(""), "multi uhd
> device address args")
> ;
>
> po::variables_map vm;
> po::store(po::parse_command_line(argc, argv, desc), vm);
> po::notify(vm);
>
> // Print help message
> if (vm.count("help"))
> {
> cout << "Replay graph test " << desc << endl;
> return EXIT_FAILURE;
> }
>
> /************************************************************************
> * Create device and block controls
> ***********************************************************************/
> cout << endl;
> cout << "Creating the RFNoC graph with args: " << args << endl << endl;
> uhd::rfnoc::rfnoc_graph::sptr graph = uhd::rfnoc::rfnoc_graph::make(args);
>
> // Create handle for radio object
> uhd::rfnoc::block_id_t radio_ctrl_id(0, "Radio", 0);
> auto radio_ctrl =
> graph->get_block<uhd::rfnoc::radio_control>(radio_ctrl_id);
>
> uhd::rfnoc::block_id_t replay_ctrl_id(0, "Replay", 0);
> auto replay_ctrl =
> graph->get_block<uhd::rfnoc::replay_block_control>(replay_ctrl_id);
>
> // Connect the Replay Port 0 to Tx Radio Port 0
> connect_through_blocks(graph, replay_ctrl_id, 0, radio_ctrl_id, 0);
>
> // Connect the Rx Radio Port 0 to Replay Port 1
> connect_through_blocks(graph, radio_ctrl_id, 0, replay_ctrl_id, 1);
>
> graph->commit();
>
> cout << "Active graph connections:" << endl;
> for (auto& edge : graph->enumerate_active_connections())
> cout << "* " << edge.to_string() << endl;
> cout << endl;
>
> return EXIT_SUCCESS;
> }
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006a779105d78fe65c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<div><br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">3) I see that on &#39;master&#39;, the Replay block was modif=
ied to change the default forwarding to Drop. Perhaps this would fix the is=
sue, but it doesn&#39;t seem like it given that the Radio is already set to=
 Drop.</blockquote><div><br></div><div>I can&#39;t explain why when using d=
ifferent ports you still get the propagation error, but I&#39;d highly sugg=
est giving the master branch a try. It fixed the case you are describing wh=
en using the same port.</div><div><br></div><div>Jonathon</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb =
9, 2022 at 12:22 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkos=
sler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi,<br><div>I created a simple example that imp=
lements an RFNoC graph between the Replay block and the Radio block on an N=
310 using UHD 4.1.0.5.=C2=A0 The idea is that Replay Port 0 connects to the=
 Tx Radio for playing out samples and then the same Rx Radio connects to Re=
play Port 1 for capturing the Rx samples.=C2=A0 The simple source code is i=
ncluded at the bottom of this email with the relevant part highlighted.=C2=
=A0</div><div><br></div><div>The example produces the error message below w=
hich indicates a circular graph, I think. I can fix it by replacing the &qu=
ot;connect_through_blocks()&quot; with &quot;graph-&gt;connect()&quot; and =
skipping property propagation on one connection.</div><div><br></div><div>I=
 do not understand why this graph as-is causes=C2=A0a propagation error. He=
re are some remarks:</div><div>1) The Replay port numbers are different.=C2=
=A0 Given that the Replay controller on branch 4.1 does not modify the defa=
ult forwarding and that the default forwarding is One-to-One, it seems that=
 different port numbers should not cause a circular propagation.</div><div>=
2) Additionally, given that the Radio block sets its forwarding to Drop, it=
 seems that there shouldn&#39;t be an issue even if the Replay block port n=
umbers were the same.</div><div>3) I see that on &#39;master&#39;, the Repl=
ay block was modified to change the default forwarding to Drop. Perhaps thi=
s would fix the issue, but it doesn&#39;t seem like it given that the Radio=
 is already set to Drop.</div><div><br></div><div>Please let me know if you=
 know why this graph causes an error.</div><div>Rob</div><div><br></div><di=
v>// Console ERROR</div><div><font color=3D"#ff0000">[ERROR] [RFNOC::GRAPH:=
:DETAIL]</font> Adding edge 0/DDC#0:0 -&gt; 0/Replay#0:1 without disabling =
property_propagation_active will lead to unresolvable graph!<br>Error: Rfno=
cError: Adding edge without disabling property_propagation_active will lead=
 to unresolvable graph!<br></div><div><br></div><div>// Example APPLICATION=
</div><div>#include &lt;uhd/rfnoc/block_id.hpp&gt;<br>#include &lt;uhd/rfno=
c/radio_control.hpp&gt;<br>#include &lt;uhd/rfnoc/replay_block_control.hpp&=
gt;<br>#include &lt;uhd/rfnoc_graph.hpp&gt;<br>#include &lt;uhd/utils/graph=
_utils.hpp&gt;<br>#include &lt;uhd/utils/safe_main.hpp&gt;<br>#include &lt;=
boost/program_options.hpp&gt;<br><br>namespace po =3D boost::program_option=
s;<br><br>using std::cout;<br>using std::endl;<br><br>int UHD_SAFE_MAIN(int=
 argc, char* argv[])<br>{<br>	std::string args;<br>	<br>	po::options_descri=
ption desc(&quot;Allowed Options&quot;);<br>	// clang-format off<br>	desc.a=
dd_options()<br>		(&quot;help&quot;, &quot;help message&quot;)<br>		(&quot;=
args&quot;, po::value&lt;std::string&gt;(&amp;args)-&gt;default_value(&quot=
;&quot;), &quot;multi uhd device address args&quot;)<br>	;<br><br>	po::vari=
ables_map vm;<br>	po::store(po::parse_command_line(argc, argv, desc), vm);<=
br>	po::notify(vm);<br><br>	// Print help message<br>	if (vm.count(&quot;he=
lp&quot;)) <br>	{<br>		cout &lt;&lt; &quot;Replay graph test &quot; &lt;&lt=
; desc &lt;&lt; endl;<br>		return EXIT_FAILURE;<br>	}<br><br>	/************=
************************************************************<br>	 * Create =
device and block controls<br>	 ********************************************=
***************************/<br>	cout &lt;&lt; endl;<br>	cout &lt;&lt; &quo=
t;Creating the RFNoC graph with args: &quot; &lt;&lt; args &lt;&lt; endl &l=
t;&lt; endl;<br>	uhd::rfnoc::rfnoc_graph::sptr graph =3D uhd::rfnoc::rfnoc_=
graph::make(args);<br><br>	// Create handle for radio object<br>	uhd::rfnoc=
::block_id_t radio_ctrl_id(0, &quot;Radio&quot;, 0);<br>	auto radio_ctrl =
=3D graph-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(radio_ctrl_id);<br=
>	<br>	uhd::rfnoc::block_id_t replay_ctrl_id(0, &quot;Replay&quot;, 0);<br>=
	auto replay_ctrl =3D graph-&gt;get_block&lt;uhd::rfnoc::replay_block_contr=
ol&gt;(replay_ctrl_id);<br><br><span style=3D"background-color:rgb(255,255,=
0)">	// Connect the Replay Port 0 to Tx Radio Port 0<br>	connect_through_bl=
ocks(graph, replay_ctrl_id, 0, radio_ctrl_id, 0);<br>	<br>	// Connect the R=
x Radio Port 0 to Replay Port 1<br>	connect_through_blocks(graph, radio_ctr=
l_id, 0, replay_ctrl_id, 1);<br>	<br>	graph-&gt;commit();<br></span>	<br>	c=
out &lt;&lt; &quot;Active graph connections:&quot; &lt;&lt; endl;<br>	for (=
auto&amp; edge : graph-&gt;enumerate_active_connections()) <br>		cout &lt;&=
lt; &quot;* &quot; &lt;&lt; edge.to_string() &lt;&lt; endl;<br>	cout &lt;&l=
t; endl;<br><br>	return EXIT_SUCCESS;<br>}<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006a779105d78fe65c--

--===============5026092324520224990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5026092324520224990==--
