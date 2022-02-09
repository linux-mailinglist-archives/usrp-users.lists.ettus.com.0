Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FA94AF56D
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 16:36:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A58B2384BBD
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 10:36:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Ff5J16mT";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id AB73A384BD7
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 10:32:33 -0500 (EST)
Received: by mail-yb1-f181.google.com with SMTP id bt13so7088708ybb.2
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 07:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i80HRjZLaRkq9aLarJxIur/EjmxHbAIAfnmKak7sFYk=;
        b=Ff5J16mTVM7e40SNk4koMemsKzRVs9Bpa3+yV9bUl42FWV9HfhRascdnY6PZoNW9eL
         H6iTN63Skwy5pHy9iXW8NzLxs9MN9A4qXP06g19eIHqB1m1M1TtWKLEJ+4V4jwiS1nnC
         tcJTXhJDy3uGbuUlrX5XbsOIUpT2V6q348Rr5JbqfDOKBZTNGrE0xrADQJhblkP+gtey
         ZbnEOHzxLsO5kL3TW0Fv8Krl6VjXhrZdm28eoXzt09LpK4frw31IU904ZlPlIWK6U1Mf
         Aj3dtpZp1L+IZRpD08iajVFq7/5EJ8CnU0wG6eIfFNccrjtD9YKZXBjTd2z8cmCQabC/
         QFuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i80HRjZLaRkq9aLarJxIur/EjmxHbAIAfnmKak7sFYk=;
        b=L2/gszxTyylU+lkPszbqyIc4meDN94G7lySWVbQCTTAOy8zjouIDce7o2dLxgKnvWN
         jFXB04vbsb672jkdF6GDQ89bY6V6iReZ6ihoN8hIfKrQfEP+gXvrFqzfPuvsneclSdOQ
         tJ1+WaCoGO1Baz1TVJCDkTTuzMrG22CXTYlgMLNCuN1Yex6WtE0Jcwnq0B4/kEMh7vDN
         TfF2wi21uffM82qeNCse7na8HzJQiesI7za4I5OIPmbowB13tU/reDYwFxrIzi0NGkKH
         Tzwhv0oyofQlEX0kMGNeMiv8Ft9t11sxWOqDAXRgpeqxW8XqKy/Wh6A2c3uZylxxrr/y
         inDg==
X-Gm-Message-State: AOAM530jVBCBUNaaorJ9sLai/9w0bpkaQqVdRfxWCnZxTTPc5oufGjxa
	5ch4aw8e2vhCAzFYphy8RZgbU3I1AXdLO89KwMGPz6nm2jwEQA==
X-Google-Smtp-Source: ABdhPJyDsjt7W5jxGime39NeSb2f/cBszreKiUKKxh7jCKyXfYHiV1Tj6dQwmZVUz09tc/3HxBWQ1cKwYI6TIDe110k=
X-Received: by 2002:a81:5646:: with SMTP id k67mr2659589ywb.76.1644420752673;
 Wed, 09 Feb 2022 07:32:32 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQtKRTNS+zMLKPS=i1YRUbJRmb4ofG=g0xhKuC383hU0Q@mail.gmail.com>
 <CAL7q81v=oCQAeCWGETXKsUMG-_JKfPv1dum+8o6uEm_CosHSLg@mail.gmail.com> <CAB__hTSF4+uSrZND88U=OkuYLaR=23Q3rO9vbww_vVeW5nTFoQ@mail.gmail.com>
In-Reply-To: <CAB__hTSF4+uSrZND88U=OkuYLaR=23Q3rO9vbww_vVeW5nTFoQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 9 Feb 2022 10:32:21 -0500
Message-ID: <CAB__hTS+kJYdEFfA0FVbJ1fnLBXu-kBXba4nZSAujQpDw+xaLQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="000000000000d3877a05d7978afe"
Message-ID-Hash: IIXY2KIXXM3ZD2SNV3DKGLLUAQOBWWGX
X-Message-ID-Hash: IIXY2KIXXM3ZD2SNV3DKGLLUAQOBWWGX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block propagation Bug?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IIXY2KIXXM3ZD2SNV3DKGLLUAQOBWWGX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000d3877a05d7978afe
Content-Type: multipart/alternative; boundary="000000000000d3877705d7978afc"

--000000000000d3877705d7978afc
Content-Type: text/plain; charset="UTF-8"

Hi Jonathon,
I tried it on 'master' and it still fails.  Attached is a modified version
of my simple example. The new version allows you to specify desired port
numbers on the command line.
Rob

On Wed, Feb 9, 2022 at 9:44 AM Rob Kossler <rkossler@nd.edu> wrote:

> Thanks Jonathon,
> OK. I will give 'master' a try. But, I would really like to understand why
> this is happening so that I have a better understanding of how the
> action/property forwarding works. Given the two things I mentioned, the
> radio's policy of Drop and the fact that the Replay block uses different
> ports, it seems to me that either of these should allow a resolvable
> propagation.  Let me know if you have any thoughts on this.
>
> Maybe there are some things that are block-related rather than
> port-related (perhaps MTU policy?).  If that is the case, then for me it is
> a good argument for having four 1-port Replay blocks rather than one 4-port
> Replay block (and the same for DDC/DUC/Radio or any multi-port block).
>
> Rob
>
> On Wed, Feb 9, 2022 at 1:25 AM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Rob,
>>
>> 3) I see that on 'master', the Replay block was modified to change the
>>> default forwarding to Drop. Perhaps this would fix the issue, but it
>>> doesn't seem like it given that the Radio is already set to Drop.
>>
>>
>> I can't explain why when using different ports you still get the
>> propagation error, but I'd highly suggest giving the master branch a try.
>> It fixed the case you are describing when using the same port.
>>
>> Jonathon
>>
>> On Wed, Feb 9, 2022 at 12:22 AM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi,
>>> I created a simple example that implements an RFNoC graph between the
>>> Replay block and the Radio block on an N310 using UHD 4.1.0.5.  The idea is
>>> that Replay Port 0 connects to the Tx Radio for playing out samples and
>>> then the same Rx Radio connects to Replay Port 1 for capturing the Rx
>>> samples.  The simple source code is included at the bottom of this email
>>> with the relevant part highlighted.
>>>
>>> The example produces the error message below which indicates a circular
>>> graph, I think. I can fix it by replacing the "connect_through_blocks()"
>>> with "graph->connect()" and skipping property propagation on one connection.
>>>
>>> I do not understand why this graph as-is causes a propagation error.
>>> Here are some remarks:
>>> 1) The Replay port numbers are different.  Given that the Replay
>>> controller on branch 4.1 does not modify the default forwarding and that
>>> the default forwarding is One-to-One, it seems that different port numbers
>>> should not cause a circular propagation.
>>> 2) Additionally, given that the Radio block sets its forwarding to Drop,
>>> it seems that there shouldn't be an issue even if the Replay block port
>>> numbers were the same.
>>> 3) I see that on 'master', the Replay block was modified to change the
>>> default forwarding to Drop. Perhaps this would fix the issue, but it
>>> doesn't seem like it given that the Radio is already set to Drop.
>>>
>>> Please let me know if you know why this graph causes an error.
>>> Rob
>>>
>>> // Console ERROR
>>> [ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -> 0/Replay#0:1
>>> without disabling property_propagation_active will lead to unresolvable
>>> graph!
>>> Error: RfnocError: Adding edge without disabling
>>> property_propagation_active will lead to unresolvable graph!
>>>
>>> // Example APPLICATION
>>> #include <uhd/rfnoc/block_id.hpp>
>>> #include <uhd/rfnoc/radio_control.hpp>
>>> #include <uhd/rfnoc/replay_block_control.hpp>
>>> #include <uhd/rfnoc_graph.hpp>
>>> #include <uhd/utils/graph_utils.hpp>
>>> #include <uhd/utils/safe_main.hpp>
>>> #include <boost/program_options.hpp>
>>>
>>> namespace po = boost::program_options;
>>>
>>> using std::cout;
>>> using std::endl;
>>>
>>> int UHD_SAFE_MAIN(int argc, char* argv[])
>>> {
>>> std::string args;
>>>
>>> po::options_description desc("Allowed Options");
>>> // clang-format off
>>> desc.add_options()
>>> ("help", "help message")
>>> ("args", po::value<std::string>(&args)->default_value(""), "multi uhd
>>> device address args")
>>> ;
>>>
>>> po::variables_map vm;
>>> po::store(po::parse_command_line(argc, argv, desc), vm);
>>> po::notify(vm);
>>>
>>> // Print help message
>>> if (vm.count("help"))
>>> {
>>> cout << "Replay graph test " << desc << endl;
>>> return EXIT_FAILURE;
>>> }
>>>
>>> /************************************************************************
>>> * Create device and block controls
>>> ***********************************************************************/
>>> cout << endl;
>>> cout << "Creating the RFNoC graph with args: " << args << endl << endl;
>>> uhd::rfnoc::rfnoc_graph::sptr graph =
>>> uhd::rfnoc::rfnoc_graph::make(args);
>>>
>>> // Create handle for radio object
>>> uhd::rfnoc::block_id_t radio_ctrl_id(0, "Radio", 0);
>>> auto radio_ctrl =
>>> graph->get_block<uhd::rfnoc::radio_control>(radio_ctrl_id);
>>>
>>> uhd::rfnoc::block_id_t replay_ctrl_id(0, "Replay", 0);
>>> auto replay_ctrl =
>>> graph->get_block<uhd::rfnoc::replay_block_control>(replay_ctrl_id);
>>>
>>> // Connect the Replay Port 0 to Tx Radio Port 0
>>> connect_through_blocks(graph, replay_ctrl_id, 0, radio_ctrl_id, 0);
>>>
>>> // Connect the Rx Radio Port 0 to Replay Port 1
>>> connect_through_blocks(graph, radio_ctrl_id, 0, replay_ctrl_id, 1);
>>>
>>> graph->commit();
>>>
>>> cout << "Active graph connections:" << endl;
>>> for (auto& edge : graph->enumerate_active_connections())
>>> cout << "* " << edge.to_string() << endl;
>>> cout << endl;
>>>
>>> return EXIT_SUCCESS;
>>> }
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000d3877705d7978afc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jonathon,<div>I tried it on &#39;master&#39; and it sti=
ll fails.=C2=A0 Attached is a modified version of my simple example. The ne=
w version allows you to specify desired port numbers on the command line.</=
div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, Feb 9, 2022 at 9:44 AM Rob Kossler &lt;<a href=3D=
"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">T=
hanks Jonathon,<div>OK. I will give &#39;master&#39; a try. But, I would re=
ally like to understand why this is happening so that I have a better under=
standing of how the action/property forwarding works. Given the two things =
I mentioned, the radio&#39;s policy of Drop and the fact that the Replay bl=
ock uses different ports, it seems to me that either of these should allow =
a resolvable propagation.=C2=A0 Let me know if you have any thoughts on thi=
s.</div><div><br></div><div>Maybe there are some things that are block-rela=
ted rather than port-related (perhaps MTU policy?).=C2=A0 If that is the ca=
se, then for me it is a good argument for having four 1-port Replay blocks =
rather than one 4-port Replay block (and the same for DDC/DUC/Radio or any =
multi-port block).</div><div><br></div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 9, 2022 =
at 1:25 AM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.co=
m" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<div=
><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">3) I see that =
on &#39;master&#39;, the Replay block was modified to change the default fo=
rwarding to Drop. Perhaps this would fix the issue, but it doesn&#39;t seem=
 like it given that the Radio is already set to Drop.</blockquote><div><br>=
</div><div>I can&#39;t explain why when using different ports you still get=
 the propagation error, but I&#39;d highly suggest giving the master branch=
 a try. It fixed the case you are describing when using the same port.</div=
><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 9, 2022 at 12:22 AM Rob Koss=
ler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.ed=
u</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Hi,<br><div>I created a simple example that implements an=
 RFNoC graph between the Replay block and the Radio block on an N310 using =
UHD 4.1.0.5.=C2=A0 The idea is that Replay Port 0 connects to the Tx Radio =
for playing out samples and then the same Rx Radio connects to Replay Port =
1 for capturing the Rx samples.=C2=A0 The simple source code is included at=
 the bottom of this email with the relevant part highlighted.=C2=A0</div><d=
iv><br></div><div>The example produces the error message below which indica=
tes a circular graph, I think. I can fix it by replacing the &quot;connect_=
through_blocks()&quot; with &quot;graph-&gt;connect()&quot; and skipping pr=
operty propagation on one connection.</div><div><br></div><div>I do not und=
erstand why this graph as-is causes=C2=A0a propagation error. Here are some=
 remarks:</div><div>1) The Replay port numbers are different.=C2=A0 Given t=
hat the Replay controller on branch 4.1 does not modify the default forward=
ing and that the default forwarding is One-to-One, it seems that different =
port numbers should not cause a circular propagation.</div><div>2) Addition=
ally, given that the Radio block sets its forwarding to Drop, it seems that=
 there shouldn&#39;t be an issue even if the Replay block port numbers were=
 the same.</div><div>3) I see that on &#39;master&#39;, the Replay block wa=
s modified to change the default forwarding to Drop. Perhaps this would fix=
 the issue, but it doesn&#39;t seem like it given that the Radio is already=
 set to Drop.</div><div><br></div><div>Please let me know if you know why t=
his graph causes an error.</div><div>Rob</div><div><br></div><div>// Consol=
e ERROR</div><div><font color=3D"#ff0000">[ERROR] [RFNOC::GRAPH::DETAIL]</f=
ont> Adding edge 0/DDC#0:0 -&gt; 0/Replay#0:1 without disabling property_pr=
opagation_active will lead to unresolvable graph!<br>Error: RfnocError: Add=
ing edge without disabling property_propagation_active will lead to unresol=
vable graph!<br></div><div><br></div><div>// Example APPLICATION</div><div>=
#include &lt;uhd/rfnoc/block_id.hpp&gt;<br>#include &lt;uhd/rfnoc/radio_con=
trol.hpp&gt;<br>#include &lt;uhd/rfnoc/replay_block_control.hpp&gt;<br>#inc=
lude &lt;uhd/rfnoc_graph.hpp&gt;<br>#include &lt;uhd/utils/graph_utils.hpp&=
gt;<br>#include &lt;uhd/utils/safe_main.hpp&gt;<br>#include &lt;boost/progr=
am_options.hpp&gt;<br><br>namespace po =3D boost::program_options;<br><br>u=
sing std::cout;<br>using std::endl;<br><br>int UHD_SAFE_MAIN(int argc, char=
* argv[])<br>{<br>	std::string args;<br>	<br>	po::options_description desc(=
&quot;Allowed Options&quot;);<br>	// clang-format off<br>	desc.add_options(=
)<br>		(&quot;help&quot;, &quot;help message&quot;)<br>		(&quot;args&quot;,=
 po::value&lt;std::string&gt;(&amp;args)-&gt;default_value(&quot;&quot;), &=
quot;multi uhd device address args&quot;)<br>	;<br><br>	po::variables_map v=
m;<br>	po::store(po::parse_command_line(argc, argv, desc), vm);<br>	po::not=
ify(vm);<br><br>	// Print help message<br>	if (vm.count(&quot;help&quot;)) =
<br>	{<br>		cout &lt;&lt; &quot;Replay graph test &quot; &lt;&lt; desc &lt;=
&lt; endl;<br>		return EXIT_FAILURE;<br>	}<br><br>	/***********************=
*************************************************<br>	 * Create device and =
block controls<br>	 *******************************************************=
****************/<br>	cout &lt;&lt; endl;<br>	cout &lt;&lt; &quot;Creating =
the RFNoC graph with args: &quot; &lt;&lt; args &lt;&lt; endl &lt;&lt; endl=
;<br>	uhd::rfnoc::rfnoc_graph::sptr graph =3D uhd::rfnoc::rfnoc_graph::make=
(args);<br><br>	// Create handle for radio object<br>	uhd::rfnoc::block_id_=
t radio_ctrl_id(0, &quot;Radio&quot;, 0);<br>	auto radio_ctrl =3D graph-&gt=
;get_block&lt;uhd::rfnoc::radio_control&gt;(radio_ctrl_id);<br>	<br>	uhd::r=
fnoc::block_id_t replay_ctrl_id(0, &quot;Replay&quot;, 0);<br>	auto replay_=
ctrl =3D graph-&gt;get_block&lt;uhd::rfnoc::replay_block_control&gt;(replay=
_ctrl_id);<br><br><span style=3D"background-color:rgb(255,255,0)">	// Conne=
ct the Replay Port 0 to Tx Radio Port 0<br>	connect_through_blocks(graph, r=
eplay_ctrl_id, 0, radio_ctrl_id, 0);<br>	<br>	// Connect the Rx Radio Port =
0 to Replay Port 1<br>	connect_through_blocks(graph, radio_ctrl_id, 0, repl=
ay_ctrl_id, 1);<br>	<br>	graph-&gt;commit();<br></span>	<br>	cout &lt;&lt; =
&quot;Active graph connections:&quot; &lt;&lt; endl;<br>	for (auto&amp; edg=
e : graph-&gt;enumerate_active_connections()) <br>		cout &lt;&lt; &quot;* &=
quot; &lt;&lt; edge.to_string() &lt;&lt; endl;<br>	cout &lt;&lt; endl;<br><=
br>	return EXIT_SUCCESS;<br>}<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000d3877705d7978afc--

--000000000000d3877a05d7978afe
Content-Type: text/x-c++src; charset="US-ASCII"; name="rfnoc_graph_test.cpp"
Content-Disposition: attachment; filename="rfnoc_graph_test.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_kzfpn3ab0>
X-Attachment-Id: f_kzfpn3ab0

I2luY2x1ZGUgPHVoZC9yZm5vYy9ibG9ja19pZC5ocHA+CiNpbmNsdWRlIDx1aGQvcmZub2MvcmFk
aW9fY29udHJvbC5ocHA+CiNpbmNsdWRlIDx1aGQvcmZub2MvcmVwbGF5X2Jsb2NrX2NvbnRyb2wu
aHBwPgojaW5jbHVkZSA8dWhkL3Jmbm9jX2dyYXBoLmhwcD4KI2luY2x1ZGUgPHVoZC91dGlscy9n
cmFwaF91dGlscy5ocHA+CiNpbmNsdWRlIDx1aGQvdXRpbHMvc2FmZV9tYWluLmhwcD4KI2luY2x1
ZGUgPGJvb3N0L3Byb2dyYW1fb3B0aW9ucy5ocHA+CgpuYW1lc3BhY2UgcG8gPSBib29zdDo6cHJv
Z3JhbV9vcHRpb25zOwoKdXNpbmcgc3RkOjpjb3V0Owp1c2luZyBzdGQ6OmVuZGw7CgppbnQgVUhE
X1NBRkVfTUFJTihpbnQgYXJnYywgY2hhciogYXJndltdKQp7CglzdGQ6OnN0cmluZyBhcmdzOwoJ
c2l6ZV90IHJlcGxheV9wbGF5X3BvcnQsIHJlcGxheV9yZWNvcmRfcG9ydDsKCQoJcG86Om9wdGlv
bnNfZGVzY3JpcHRpb24gZGVzYygiQWxsb3dlZCBPcHRpb25zIik7CgkvLyBjbGFuZy1mb3JtYXQg
b2ZmCglkZXNjLmFkZF9vcHRpb25zKCkKCQkoImhlbHAiLCAiaGVscCBtZXNzYWdlIikKCQkoImFy
Z3MiLCBwbzo6dmFsdWU8c3RkOjpzdHJpbmc+KCZhcmdzKS0+ZGVmYXVsdF92YWx1ZSgiIiksICJt
dWx0aSB1aGQgZGV2aWNlIGFkZHJlc3MgYXJncyIpCgkJKCJyZXBsYXktcGxheS1wb3J0IiwgcG86
OnZhbHVlPHNpemVfdD4oJnJlcGxheV9wbGF5X3BvcnQpLT5kZWZhdWx0X3ZhbHVlKDApLCAicmVw
bGF5IHBvcnQgZm9yIHBsYXlvdXQiKQoJCSgicmVwbGF5LXJlY29yZC1wb3J0IiwgcG86OnZhbHVl
PHNpemVfdD4oJnJlcGxheV9yZWNvcmRfcG9ydCktPmRlZmF1bHRfdmFsdWUoMSksICJyZXBsYXkg
cG9ydCBmb3IgcmVjb3JkaW5nIikKCQk7CgoJcG86OnZhcmlhYmxlc19tYXAgdm07Cglwbzo6c3Rv
cmUocG86OnBhcnNlX2NvbW1hbmRfbGluZShhcmdjLCBhcmd2LCBkZXNjKSwgdm0pOwoJcG86Om5v
dGlmeSh2bSk7CgoJLy8gUHJpbnQgaGVscCBtZXNzYWdlCglpZiAodm0uY291bnQoImhlbHAiKSkg
Cgl7CgkJY291dCA8PCAiUmVwbGF5IGdyYXBoIHRlc3QgIiA8PCBkZXNjIDw8IGVuZGw7CgkJcmV0
dXJuIEVYSVRfRkFJTFVSRTsKCX0KCgkvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCgkgKiBDcmVhdGUgZGV2aWNl
IGFuZCBibG9jayBjb250cm9scwoJICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoJY291dCA8PCBlbmRsOwoJY291
dCA8PCAiQ3JlYXRpbmcgdGhlIFJGTm9DIGdyYXBoIHdpdGggYXJnczogIiA8PCBhcmdzIDw8IGVu
ZGwgPDwgZW5kbDsKCXVoZDo6cmZub2M6OnJmbm9jX2dyYXBoOjpzcHRyIGdyYXBoID0gdWhkOjpy
Zm5vYzo6cmZub2NfZ3JhcGg6Om1ha2UoYXJncyk7CgoJLy8gQ3JlYXRlIGhhbmRsZSBmb3IgcmFk
aW8gb2JqZWN0Cgl1aGQ6OnJmbm9jOjpibG9ja19pZF90IHJhZGlvX2N0cmxfaWQoMCwgIlJhZGlv
IiwgMCk7CglhdXRvIHJhZGlvX2N0cmwgPSBncmFwaC0+Z2V0X2Jsb2NrPHVoZDo6cmZub2M6OnJh
ZGlvX2NvbnRyb2w+KHJhZGlvX2N0cmxfaWQpOwoJCgl1aGQ6OnJmbm9jOjpibG9ja19pZF90IHJl
cGxheV9jdHJsX2lkKDAsICJSZXBsYXkiLCAwKTsKCWF1dG8gcmVwbGF5X2N0cmwgPSBncmFwaC0+
Z2V0X2Jsb2NrPHVoZDo6cmZub2M6OnJlcGxheV9ibG9ja19jb250cm9sPihyZXBsYXlfY3RybF9p
ZCk7CgoJY29uc3Qgc2l6ZV90IHJhZGlvX3BvcnQgPSAwOwoJCgkvLyBDb25uZWN0IHRoZSBSZXBs
YXkgUG9ydCAwIHRvIFR4IFJhZGlvIFBvcnQgMAoJY29ubmVjdF90aHJvdWdoX2Jsb2NrcyhncmFw
aCwgcmVwbGF5X2N0cmxfaWQsIHJlcGxheV9wbGF5X3BvcnQsIHJhZGlvX2N0cmxfaWQsIHJhZGlv
X3BvcnQpOwoJCgkvLyBDb25uZWN0IHRoZSBSeCBSYWRpbyBQb3J0IDAgdG8gUmVwbGF5IFBvcnQg
MQoJY29ubmVjdF90aHJvdWdoX2Jsb2NrcyhncmFwaCwgcmFkaW9fY3RybF9pZCwgcmFkaW9fcG9y
dCwgcmVwbGF5X2N0cmxfaWQsIHJlcGxheV9yZWNvcmRfcG9ydCk7CgkKCWdyYXBoLT5jb21taXQo
KTsKCQoJY291dCA8PCAiQWN0aXZlIGdyYXBoIGNvbm5lY3Rpb25zOiIgPDwgZW5kbDsKCWZvciAo
YXV0byYgZWRnZSA6IGdyYXBoLT5lbnVtZXJhdGVfYWN0aXZlX2Nvbm5lY3Rpb25zKCkpIAoJCWNv
dXQgPDwgIiogIiA8PCBlZGdlLnRvX3N0cmluZygpIDw8IGVuZGw7Cgljb3V0IDw8IGVuZGw7CgoJ
cmV0dXJuIEVYSVRfU1VDQ0VTUzsKfQo=
--000000000000d3877a05d7978afe
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000d3877a05d7978afe--
