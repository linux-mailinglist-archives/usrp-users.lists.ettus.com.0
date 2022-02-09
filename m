Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D87374AE904
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 06:23:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68807383FA5
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 00:23:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="c6gg/e1d";
	dkim-atps=neutral
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id F1E4E3849DB
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 00:22:01 -0500 (EST)
Received: by mail-yb1-f173.google.com with SMTP id v47so2884958ybi.4
        for <usrp-users@lists.ettus.com>; Tue, 08 Feb 2022 21:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZqTEzL5Iw4neuZ/2Op8Zd/P26BavnZTcZhQ9N8Axzbg=;
        b=c6gg/e1dThAZ3tanhZYx0F3ky1qv9MixxJZE2UIk3MrG8AZmstQOugdQ1jlkqp1l3/
         yfNUzRHKeJS8uS8ylzegvkbvaxz4jw4yO/ZIcMlKWZFTQ8yNqg2ujVNFP7picg1sxcLy
         he+7OIsktdrn4w8exV6P14Pqimktklwv9x9aVxg6/2dH2Q3Ym9B2bf8qEJuZQ8jX4Od6
         pCnQFGzis74QAdS9Ve9VJ/3SBwjkOByWqgHLSbA2SIM2CP2RQzRfTWYnsaOSqjFYu6Qz
         caoJmVtJLfrSre8jD2JbI6h2bgMRF09pGF5dAZL9aRbgF444CwbCfcr6p/7WGxT3n5av
         ePQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZqTEzL5Iw4neuZ/2Op8Zd/P26BavnZTcZhQ9N8Axzbg=;
        b=UaGP4kmbxN1ZnFFDgEnm5+xxfoVf06TjGT3Jb+PwHLOA0vjdxW4VGj2bVtEeq4h/HX
         JYGanc0P4nGgPle7JhDmQvVYlfOoeyMUu5D27nuxO/tVI1TWuwR+FNtpAFdoN7tbhGn5
         dBl0Chl1uPF6Yl/cwW39BxUSuBAdpn0XNBjOVSbjjacvyNmJKZOTxdiYE2/0F068g+Sg
         ewVZTImTtBQj5b4s5ftzeBcedzwYVhjsnJ8WaWPcd4Z07QEg9I6+Uw0P7vSHOl6jTd2J
         Zw9eLpiIb6XedF6hXJNhdZiTg57Vrd1Jmrnn2ShjbVSRKNd5gaaGjB7nl/RwulV43q3/
         x4kg==
X-Gm-Message-State: AOAM5314b9rrHaaej66UcImSE1Jfn71Dadmps1v1kmq93lUhTwfdGDZh
	hlaBdU/URVSzrn91BE+mOZjaIBrDORq7z3qb2c5/rIIE2jCyhroI
X-Google-Smtp-Source: ABdhPJyhYdz5CETSCNGtxvFdvzJgVKuHQJzqGs9M/jCBQGDNko6In81fQBrMSfxMDxqC9tpWF5yt7+yr2hTrCXfLJnk=
X-Received: by 2002:a25:aa65:: with SMTP id s92mr663029ybi.750.1644384120743;
 Tue, 08 Feb 2022 21:22:00 -0800 (PST)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 9 Feb 2022 00:21:50 -0500
Message-ID: <CAB__hTQtKRTNS+zMLKPS=i1YRUbJRmb4ofG=g0xhKuC383hU0Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: LZGFMGCSCRDG22YMADG33KFY7GYRO3AR
X-Message-ID-Hash: LZGFMGCSCRDG22YMADG33KFY7GYRO3AR
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Replay block propagation Bug?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LZGFMGCSCRDG22YMADG33KFY7GYRO3AR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0647642822938703992=="

--===============0647642822938703992==
Content-Type: multipart/alternative; boundary="00000000000064690d05d78f031b"

--00000000000064690d05d78f031b
Content-Type: text/plain; charset="UTF-8"

Hi,
I created a simple example that implements an RFNoC graph between the
Replay block and the Radio block on an N310 using UHD 4.1.0.5.  The idea is
that Replay Port 0 connects to the Tx Radio for playing out samples and
then the same Rx Radio connects to Replay Port 1 for capturing the Rx
samples.  The simple source code is included at the bottom of this email
with the relevant part highlighted.

The example produces the error message below which indicates a circular
graph, I think. I can fix it by replacing the "connect_through_blocks()"
with "graph->connect()" and skipping property propagation on one connection.

I do not understand why this graph as-is causes a propagation error. Here
are some remarks:
1) The Replay port numbers are different.  Given that the Replay controller
on branch 4.1 does not modify the default forwarding and that the default
forwarding is One-to-One, it seems that different port numbers should not
cause a circular propagation.
2) Additionally, given that the Radio block sets its forwarding to Drop, it
seems that there shouldn't be an issue even if the Replay block port
numbers were the same.
3) I see that on 'master', the Replay block was modified to change the
default forwarding to Drop. Perhaps this would fix the issue, but it
doesn't seem like it given that the Radio is already set to Drop.

Please let me know if you know why this graph causes an error.
Rob

// Console ERROR
[ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -> 0/Replay#0:1
without disabling property_propagation_active will lead to unresolvable
graph!
Error: RfnocError: Adding edge without disabling
property_propagation_active will lead to unresolvable graph!

// Example APPLICATION
#include <uhd/rfnoc/block_id.hpp>
#include <uhd/rfnoc/radio_control.hpp>
#include <uhd/rfnoc/replay_block_control.hpp>
#include <uhd/rfnoc_graph.hpp>
#include <uhd/utils/graph_utils.hpp>
#include <uhd/utils/safe_main.hpp>
#include <boost/program_options.hpp>

namespace po = boost::program_options;

using std::cout;
using std::endl;

int UHD_SAFE_MAIN(int argc, char* argv[])
{
std::string args;

po::options_description desc("Allowed Options");
// clang-format off
desc.add_options()
("help", "help message")
("args", po::value<std::string>(&args)->default_value(""), "multi uhd
device address args")
;

po::variables_map vm;
po::store(po::parse_command_line(argc, argv, desc), vm);
po::notify(vm);

// Print help message
if (vm.count("help"))
{
cout << "Replay graph test " << desc << endl;
return EXIT_FAILURE;
}

/************************************************************************
* Create device and block controls
***********************************************************************/
cout << endl;
cout << "Creating the RFNoC graph with args: " << args << endl << endl;
uhd::rfnoc::rfnoc_graph::sptr graph = uhd::rfnoc::rfnoc_graph::make(args);

// Create handle for radio object
uhd::rfnoc::block_id_t radio_ctrl_id(0, "Radio", 0);
auto radio_ctrl =
graph->get_block<uhd::rfnoc::radio_control>(radio_ctrl_id);

uhd::rfnoc::block_id_t replay_ctrl_id(0, "Replay", 0);
auto replay_ctrl =
graph->get_block<uhd::rfnoc::replay_block_control>(replay_ctrl_id);

// Connect the Replay Port 0 to Tx Radio Port 0
connect_through_blocks(graph, replay_ctrl_id, 0, radio_ctrl_id, 0);

// Connect the Rx Radio Port 0 to Replay Port 1
connect_through_blocks(graph, radio_ctrl_id, 0, replay_ctrl_id, 1);

graph->commit();

cout << "Active graph connections:" << endl;
for (auto& edge : graph->enumerate_active_connections())
cout << "* " << edge.to_string() << endl;
cout << endl;

return EXIT_SUCCESS;
}

--00000000000064690d05d78f031b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I created a simple example that implements an =
RFNoC graph between the Replay block and the Radio block on an N310 using U=
HD 4.1.0.5.=C2=A0 The idea is that Replay Port 0 connects to the Tx Radio f=
or playing out samples and then the same Rx Radio connects to Replay Port 1=
 for capturing the Rx samples.=C2=A0 The simple source code is included at =
the bottom of this email with the relevant part highlighted.=C2=A0</div><di=
v><br></div><div>The example produces the error message below which indicat=
es a circular graph, I think. I can fix it by replacing the &quot;connect_t=
hrough_blocks()&quot; with &quot;graph-&gt;connect()&quot; and skipping pro=
perty propagation on one connection.</div><div><br></div><div>I do not unde=
rstand why this graph as-is causes=C2=A0a propagation error. Here are some =
remarks:</div><div>1) The Replay port numbers are different.=C2=A0 Given th=
at the Replay controller on branch 4.1 does not modify the default forwardi=
ng and that the default forwarding is One-to-One, it seems that different p=
ort numbers should not cause a circular propagation.</div><div>2) Additiona=
lly, given that the Radio block sets its forwarding to Drop, it seems that =
there shouldn&#39;t be an issue even if the Replay block port numbers were =
the same.</div><div>3) I see that on &#39;master&#39;, the Replay block was=
 modified to change the default forwarding to Drop. Perhaps this would fix =
the issue, but it doesn&#39;t seem like it given that the Radio is already =
set to Drop.</div><div><br></div><div>Please let me know if you know why th=
is graph causes an error.</div><div>Rob</div><div><br></div><div>// Console=
 ERROR</div><div><font color=3D"#ff0000">[ERROR] [RFNOC::GRAPH::DETAIL]</fo=
nt> Adding edge 0/DDC#0:0 -&gt; 0/Replay#0:1 without disabling property_pro=
pagation_active will lead to unresolvable graph!<br>Error: RfnocError: Addi=
ng edge without disabling property_propagation_active will lead to unresolv=
able graph!<br></div><div><br></div><div>// Example APPLICATION</div><div>#=
include &lt;uhd/rfnoc/block_id.hpp&gt;<br>#include &lt;uhd/rfnoc/radio_cont=
rol.hpp&gt;<br>#include &lt;uhd/rfnoc/replay_block_control.hpp&gt;<br>#incl=
ude &lt;uhd/rfnoc_graph.hpp&gt;<br>#include &lt;uhd/utils/graph_utils.hpp&g=
t;<br>#include &lt;uhd/utils/safe_main.hpp&gt;<br>#include &lt;boost/progra=
m_options.hpp&gt;<br><br>namespace po =3D boost::program_options;<br><br>us=
ing std::cout;<br>using std::endl;<br><br>int UHD_SAFE_MAIN(int argc, char*=
 argv[])<br>{<br>	std::string args;<br>	<br>	po::options_description desc(&=
quot;Allowed Options&quot;);<br>	// clang-format off<br>	desc.add_options()=
<br>		(&quot;help&quot;, &quot;help message&quot;)<br>		(&quot;args&quot;, =
po::value&lt;std::string&gt;(&amp;args)-&gt;default_value(&quot;&quot;), &q=
uot;multi uhd device address args&quot;)<br>	;<br><br>	po::variables_map vm=
;<br>	po::store(po::parse_command_line(argc, argv, desc), vm);<br>	po::noti=
fy(vm);<br><br>	// Print help message<br>	if (vm.count(&quot;help&quot;)) <=
br>	{<br>		cout &lt;&lt; &quot;Replay graph test &quot; &lt;&lt; desc &lt;&=
lt; endl;<br>		return EXIT_FAILURE;<br>	}<br><br>	/************************=
************************************************<br>	 * Create device and b=
lock controls<br>	 ********************************************************=
***************/<br>	cout &lt;&lt; endl;<br>	cout &lt;&lt; &quot;Creating t=
he RFNoC graph with args: &quot; &lt;&lt; args &lt;&lt; endl &lt;&lt; endl;=
<br>	uhd::rfnoc::rfnoc_graph::sptr graph =3D uhd::rfnoc::rfnoc_graph::make(=
args);<br><br>	// Create handle for radio object<br>	uhd::rfnoc::block_id_t=
 radio_ctrl_id(0, &quot;Radio&quot;, 0);<br>	auto radio_ctrl =3D graph-&gt;=
get_block&lt;uhd::rfnoc::radio_control&gt;(radio_ctrl_id);<br>	<br>	uhd::rf=
noc::block_id_t replay_ctrl_id(0, &quot;Replay&quot;, 0);<br>	auto replay_c=
trl =3D graph-&gt;get_block&lt;uhd::rfnoc::replay_block_control&gt;(replay_=
ctrl_id);<br><br><span style=3D"background-color:rgb(255,255,0)">	// Connec=
t the Replay Port 0 to Tx Radio Port 0<br>	connect_through_blocks(graph, re=
play_ctrl_id, 0, radio_ctrl_id, 0);<br>	<br>	// Connect the Rx Radio Port 0=
 to Replay Port 1<br>	connect_through_blocks(graph, radio_ctrl_id, 0, repla=
y_ctrl_id, 1);<br>	<br>	graph-&gt;commit();<br></span>	<br>	cout &lt;&lt; &=
quot;Active graph connections:&quot; &lt;&lt; endl;<br>	for (auto&amp; edge=
 : graph-&gt;enumerate_active_connections()) <br>		cout &lt;&lt; &quot;* &q=
uot; &lt;&lt; edge.to_string() &lt;&lt; endl;<br>	cout &lt;&lt; endl;<br><b=
r>	return EXIT_SUCCESS;<br>}<br></div></div>

--00000000000064690d05d78f031b--

--===============0647642822938703992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0647642822938703992==--
