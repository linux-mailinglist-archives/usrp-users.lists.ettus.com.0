Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A884AF458
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 15:46:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55C3E384AFA
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 09:46:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="CzUR7x+T";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id D14E0384AE9
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 09:44:56 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id j2so6749380ybu.0
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 06:44:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QmgEKaXi79zPoO37CI+S7zKKtnwdxWnCxgQ1fYxokvE=;
        b=CzUR7x+TKNFZbKHExYv2W36KevTgNUqpAdoWbB0hjYVMX3kUEKPusCDzqrBpgST+nM
         PqUf/7cA+hsC1nzu3zJ/3/ETd/FogoubosevudWiJ1klN+yqPqQ0fBiZATw/C1gS5azp
         akGt9diU6FYeKNE4DwtibpWNcYIwWufofbVdJq8CyO2FFzoyOIAEjTS7Vyjdsh57OW4s
         cNemjj8xXQkJ9RzZc3dlZczcwsOfieDSrmXNnOPZJYjLlktUkscM4kmfNm5NdGoKpPv5
         WSuiu9tcJ8XmszAU48ixH53S5srI2oGtnJsyDWlT+ILaDtwDuY+ZxSND5f5q34aGbPb7
         utMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QmgEKaXi79zPoO37CI+S7zKKtnwdxWnCxgQ1fYxokvE=;
        b=TEBV73P+S5qeYIVNJfuKWrB3DRnyWM2xlR9UZbLU7Ona7lpqYnDVLgvb5+4ShfGX+l
         X2PKiKyExLkU2x7RX/BoAJvlQ2J+j//hMoQlfTFAdU7nd2KS+2vQUOELEY1IgYGusWOA
         gs0D9tpXuZZGyABIp9goGCEKLBiXsofMOQQWKBzZ3hbV7c3v9PgZb/7MysbocIlV4gwC
         EyRyiw8FnQtT5Aro+x0FgVRCf45HdnP+Eq/BTn3HrTtl5t0CTT3abotNdv+obwcmuTDu
         m671V8pb4Qf4L101CCLVAXDkIyhmSClhSgnIKm+3U5xWnC3JWI4ygAZ2iGk+yynUfAUd
         pAYg==
X-Gm-Message-State: AOAM532abqLX6Znkkq6zgbIqxgNTS3RtOOhOtqp3ADSfH2J1PinxPJAr
	NAC2F/X+55kcoRNdPCnEaPXQ0vJ+TeCS8W3ATpDkUw==
X-Google-Smtp-Source: ABdhPJwehB2xYk+r82hKu1x7aPL7i02Hwtn/tTvbVhmmADV9oSwqaBddbeWhM/SDlMrvOn6vn3QNwDlFsnxjmpaZIvQ=
X-Received: by 2002:a25:df48:: with SMTP id w69mr2398266ybg.13.1644417895950;
 Wed, 09 Feb 2022 06:44:55 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQtKRTNS+zMLKPS=i1YRUbJRmb4ofG=g0xhKuC383hU0Q@mail.gmail.com>
 <CAL7q81v=oCQAeCWGETXKsUMG-_JKfPv1dum+8o6uEm_CosHSLg@mail.gmail.com>
In-Reply-To: <CAL7q81v=oCQAeCWGETXKsUMG-_JKfPv1dum+8o6uEm_CosHSLg@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 9 Feb 2022 09:44:45 -0500
Message-ID: <CAB__hTSF4+uSrZND88U=OkuYLaR=23Q3rO9vbww_vVeW5nTFoQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: K2LCQ5TMTJUGCEZHPOWTYEL2V5CD33O6
X-Message-ID-Hash: K2LCQ5TMTJUGCEZHPOWTYEL2V5CD33O6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replay block propagation Bug?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K2LCQ5TMTJUGCEZHPOWTYEL2V5CD33O6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8071880167217631913=="

--===============8071880167217631913==
Content-Type: multipart/alternative; boundary="0000000000008d47e805d796e03e"

--0000000000008d47e805d796e03e
Content-Type: text/plain; charset="UTF-8"

Thanks Jonathon,
OK. I will give 'master' a try. But, I would really like to understand why
this is happening so that I have a better understanding of how the
action/property forwarding works. Given the two things I mentioned, the
radio's policy of Drop and the fact that the Replay block uses different
ports, it seems to me that either of these should allow a resolvable
propagation.  Let me know if you have any thoughts on this.

Maybe there are some things that are block-related rather than port-related
(perhaps MTU policy?).  If that is the case, then for me it is a good
argument for having four 1-port Replay blocks rather than one 4-port Replay
block (and the same for DDC/DUC/Radio or any multi-port block).

Rob

On Wed, Feb 9, 2022 at 1:25 AM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hi Rob,
>
> 3) I see that on 'master', the Replay block was modified to change the
>> default forwarding to Drop. Perhaps this would fix the issue, but it
>> doesn't seem like it given that the Radio is already set to Drop.
>
>
> I can't explain why when using different ports you still get the
> propagation error, but I'd highly suggest giving the master branch a try.
> It fixed the case you are describing when using the same port.
>
> Jonathon
>
> On Wed, Feb 9, 2022 at 12:22 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi,
>> I created a simple example that implements an RFNoC graph between the
>> Replay block and the Radio block on an N310 using UHD 4.1.0.5.  The idea is
>> that Replay Port 0 connects to the Tx Radio for playing out samples and
>> then the same Rx Radio connects to Replay Port 1 for capturing the Rx
>> samples.  The simple source code is included at the bottom of this email
>> with the relevant part highlighted.
>>
>> The example produces the error message below which indicates a circular
>> graph, I think. I can fix it by replacing the "connect_through_blocks()"
>> with "graph->connect()" and skipping property propagation on one connection.
>>
>> I do not understand why this graph as-is causes a propagation error. Here
>> are some remarks:
>> 1) The Replay port numbers are different.  Given that the Replay
>> controller on branch 4.1 does not modify the default forwarding and that
>> the default forwarding is One-to-One, it seems that different port numbers
>> should not cause a circular propagation.
>> 2) Additionally, given that the Radio block sets its forwarding to Drop,
>> it seems that there shouldn't be an issue even if the Replay block port
>> numbers were the same.
>> 3) I see that on 'master', the Replay block was modified to change the
>> default forwarding to Drop. Perhaps this would fix the issue, but it
>> doesn't seem like it given that the Radio is already set to Drop.
>>
>> Please let me know if you know why this graph causes an error.
>> Rob
>>
>> // Console ERROR
>> [ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -> 0/Replay#0:1
>> without disabling property_propagation_active will lead to unresolvable
>> graph!
>> Error: RfnocError: Adding edge without disabling
>> property_propagation_active will lead to unresolvable graph!
>>
>> // Example APPLICATION
>> #include <uhd/rfnoc/block_id.hpp>
>> #include <uhd/rfnoc/radio_control.hpp>
>> #include <uhd/rfnoc/replay_block_control.hpp>
>> #include <uhd/rfnoc_graph.hpp>
>> #include <uhd/utils/graph_utils.hpp>
>> #include <uhd/utils/safe_main.hpp>
>> #include <boost/program_options.hpp>
>>
>> namespace po = boost::program_options;
>>
>> using std::cout;
>> using std::endl;
>>
>> int UHD_SAFE_MAIN(int argc, char* argv[])
>> {
>> std::string args;
>>
>> po::options_description desc("Allowed Options");
>> // clang-format off
>> desc.add_options()
>> ("help", "help message")
>> ("args", po::value<std::string>(&args)->default_value(""), "multi uhd
>> device address args")
>> ;
>>
>> po::variables_map vm;
>> po::store(po::parse_command_line(argc, argv, desc), vm);
>> po::notify(vm);
>>
>> // Print help message
>> if (vm.count("help"))
>> {
>> cout << "Replay graph test " << desc << endl;
>> return EXIT_FAILURE;
>> }
>>
>> /************************************************************************
>> * Create device and block controls
>> ***********************************************************************/
>> cout << endl;
>> cout << "Creating the RFNoC graph with args: " << args << endl << endl;
>> uhd::rfnoc::rfnoc_graph::sptr graph = uhd::rfnoc::rfnoc_graph::make(args);
>>
>> // Create handle for radio object
>> uhd::rfnoc::block_id_t radio_ctrl_id(0, "Radio", 0);
>> auto radio_ctrl =
>> graph->get_block<uhd::rfnoc::radio_control>(radio_ctrl_id);
>>
>> uhd::rfnoc::block_id_t replay_ctrl_id(0, "Replay", 0);
>> auto replay_ctrl =
>> graph->get_block<uhd::rfnoc::replay_block_control>(replay_ctrl_id);
>>
>> // Connect the Replay Port 0 to Tx Radio Port 0
>> connect_through_blocks(graph, replay_ctrl_id, 0, radio_ctrl_id, 0);
>>
>> // Connect the Rx Radio Port 0 to Replay Port 1
>> connect_through_blocks(graph, radio_ctrl_id, 0, replay_ctrl_id, 1);
>>
>> graph->commit();
>>
>> cout << "Active graph connections:" << endl;
>> for (auto& edge : graph->enumerate_active_connections())
>> cout << "* " << edge.to_string() << endl;
>> cout << endl;
>>
>> return EXIT_SUCCESS;
>> }
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000008d47e805d796e03e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks Jonathon,<div>OK. I will give &#39=
;master&#39; a try. But, I would really like to understand why this is happ=
ening so that I have a better understanding of how the action/property forw=
arding works. Given the two things I mentioned, the radio&#39;s policy of D=
rop and the fact that the Replay block uses different ports, it seems to me=
 that either of these should allow a resolvable propagation.=C2=A0 Let me k=
now if you have any thoughts on this.</div><div><br></div><div>Maybe there =
are some things that are block-related rather than port-related (perhaps MT=
U policy?).=C2=A0 If that is the case, then for me it is a good argument fo=
r having four 1-port Replay blocks rather than one 4-port Replay block (and=
 the same for DDC/DUC/Radio or any multi-port block).</div><div><br></div><=
div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, Feb 9, 2022 at 1:25 AM Jonathon Pendlum &lt;<a href=3D=
"mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr">Hi Rob,<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>3) I see that on &#39;master&#39;, the Replay block was modified to change=
 the default forwarding to Drop. Perhaps this would fix the issue, but it d=
oesn&#39;t seem like it given that the Radio is already set to Drop.</block=
quote><div><br></div><div>I can&#39;t explain why when using different port=
s you still get the propagation error, but I&#39;d highly suggest giving th=
e master branch a try. It fixed the case you are describing when using the =
same port.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 9, 2022 at 12=
:22 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank"=
>rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I created a simple example tha=
t implements an RFNoC graph between the Replay block and the Radio block on=
 an N310 using UHD 4.1.0.5.=C2=A0 The idea is that Replay Port 0 connects t=
o the Tx Radio for playing out samples and then the same Rx Radio connects =
to Replay Port 1 for capturing the Rx samples.=C2=A0 The simple source code=
 is included at the bottom of this email with the relevant part highlighted=
.=C2=A0</div><div><br></div><div>The example produces the error message bel=
ow which indicates a circular graph, I think. I can fix it by replacing the=
 &quot;connect_through_blocks()&quot; with &quot;graph-&gt;connect()&quot; =
and skipping property propagation on one connection.</div><div><br></div><d=
iv>I do not understand why this graph as-is causes=C2=A0a propagation error=
. Here are some remarks:</div><div>1) The Replay port numbers are different=
.=C2=A0 Given that the Replay controller on branch 4.1 does not modify the =
default forwarding and that the default forwarding is One-to-One, it seems =
that different port numbers should not cause a circular propagation.</div><=
div>2) Additionally, given that the Radio block sets its forwarding to Drop=
, it seems that there shouldn&#39;t be an issue even if the Replay block po=
rt numbers were the same.</div><div>3) I see that on &#39;master&#39;, the =
Replay block was modified to change the default forwarding to Drop. Perhaps=
 this would fix the issue, but it doesn&#39;t seem like it given that the R=
adio is already set to Drop.</div><div><br></div><div>Please let me know if=
 you know why this graph causes an error.</div><div>Rob</div><div><br></div=
><div>// Console ERROR</div><div><font color=3D"#ff0000">[ERROR] [RFNOC::GR=
APH::DETAIL]</font> Adding edge 0/DDC#0:0 -&gt; 0/Replay#0:1 without disabl=
ing property_propagation_active will lead to unresolvable graph!<br>Error: =
RfnocError: Adding edge without disabling property_propagation_active will =
lead to unresolvable graph!<br></div><div><br></div><div>// Example APPLICA=
TION</div><div>#include &lt;uhd/rfnoc/block_id.hpp&gt;<br>#include &lt;uhd/=
rfnoc/radio_control.hpp&gt;<br>#include &lt;uhd/rfnoc/replay_block_control.=
hpp&gt;<br>#include &lt;uhd/rfnoc_graph.hpp&gt;<br>#include &lt;uhd/utils/g=
raph_utils.hpp&gt;<br>#include &lt;uhd/utils/safe_main.hpp&gt;<br>#include =
&lt;boost/program_options.hpp&gt;<br><br>namespace po =3D boost::program_op=
tions;<br><br>using std::cout;<br>using std::endl;<br><br>int UHD_SAFE_MAIN=
(int argc, char* argv[])<br>{<br>	std::string args;<br>	<br>	po::options_de=
scription desc(&quot;Allowed Options&quot;);<br>	// clang-format off<br>	de=
sc.add_options()<br>		(&quot;help&quot;, &quot;help message&quot;)<br>		(&q=
uot;args&quot;, po::value&lt;std::string&gt;(&amp;args)-&gt;default_value(&=
quot;&quot;), &quot;multi uhd device address args&quot;)<br>	;<br><br>	po::=
variables_map vm;<br>	po::store(po::parse_command_line(argc, argv, desc), v=
m);<br>	po::notify(vm);<br><br>	// Print help message<br>	if (vm.count(&quo=
t;help&quot;)) <br>	{<br>		cout &lt;&lt; &quot;Replay graph test &quot; &lt=
;&lt; desc &lt;&lt; endl;<br>		return EXIT_FAILURE;<br>	}<br><br>	/********=
****************************************************************<br>	 * Cre=
ate device and block controls<br>	 ****************************************=
*******************************/<br>	cout &lt;&lt; endl;<br>	cout &lt;&lt; =
&quot;Creating the RFNoC graph with args: &quot; &lt;&lt; args &lt;&lt; end=
l &lt;&lt; endl;<br>	uhd::rfnoc::rfnoc_graph::sptr graph =3D uhd::rfnoc::rf=
noc_graph::make(args);<br><br>	// Create handle for radio object<br>	uhd::r=
fnoc::block_id_t radio_ctrl_id(0, &quot;Radio&quot;, 0);<br>	auto radio_ctr=
l =3D graph-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(radio_ctrl_id);<=
br>	<br>	uhd::rfnoc::block_id_t replay_ctrl_id(0, &quot;Replay&quot;, 0);<b=
r>	auto replay_ctrl =3D graph-&gt;get_block&lt;uhd::rfnoc::replay_block_con=
trol&gt;(replay_ctrl_id);<br><br><span style=3D"background-color:rgb(255,25=
5,0)">	// Connect the Replay Port 0 to Tx Radio Port 0<br>	connect_through_=
blocks(graph, replay_ctrl_id, 0, radio_ctrl_id, 0);<br>	<br>	// Connect the=
 Rx Radio Port 0 to Replay Port 1<br>	connect_through_blocks(graph, radio_c=
trl_id, 0, replay_ctrl_id, 1);<br>	<br>	graph-&gt;commit();<br></span>	<br>=
	cout &lt;&lt; &quot;Active graph connections:&quot; &lt;&lt; endl;<br>	for=
 (auto&amp; edge : graph-&gt;enumerate_active_connections()) <br>		cout &lt=
;&lt; &quot;* &quot; &lt;&lt; edge.to_string() &lt;&lt; endl;<br>	cout &lt;=
&lt; endl;<br><br>	return EXIT_SUCCESS;<br>}<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--0000000000008d47e805d796e03e--

--===============8071880167217631913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8071880167217631913==--
