Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53986AEA32F
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jun 2025 18:06:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E4539386167
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jun 2025 12:06:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750954015; bh=rEbFktaBTp9K4dfKm7xpQfkj1uCkMA7+/nHFG+b7XJ8=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=YPhVHoIo6pmMMbg18zqntkgUdY1X2hgWeGdPpDnAtJTMQvK95os+t+TzRIO7+T0Uv
	 7+7voAUQ/TJ4rSHIHjVBNjQ7mjM6MqS5cgcIVoSVHP3YOd5WmdEh5/fAkIhvOTKllO
	 PlXn/sutKGiV2l89HXr80SoKEb/tXnt7uF8DgXjPk2+9Qp8OrQMPI5+07WAect3Sex
	 CbHuYKsepZWOr9X7RWgKMSSYf5xJAgsL0jc9pW++zMwB5yGey8G7PQZxJX3MzXu+Uf
	 YCO0eU75zpEw5C1RBgsIWaOwwAEtWnlhXkGNcmQe4QmQ+zhMUed5q6K1wxCro8hlwf
	 xI09gNQ0LcVvw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 054FA385D72
	for <usrp-users@lists.ettus.com>; Thu, 26 Jun 2025 12:05:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750953948; bh=EZB8ZDnUkATwRV3Lr1TBEBNBMWozpwgwmv4kng0V8Hc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=YCgHRWLGv5zbKQymyqpS65JtjHOI5bkVXo2F+zj7/IsNsx8zWZRsYOHBbHk4TeC3a
	 zXr8xjN8LsjcL9puk243AeeZtoevwFG807AfbfzsBi4o6gs8IWRuPuhgotIYwc5rhn
	 yTx7MiqlsqfSrj6Ne0APa8BDhemvU1M/582p6mRVi+K7pMqJo9zwI2H+jw2QveLcvZ
	 6/BwaZ9CyeQ25r130VBePkM4aiiERuUHzlABhZrfKFG0TDVc+B37a0/kCxa8H9d1xJ
	 fGGUJMAvk4eBqqeltT9qRxXoon7/2HMlUqblId4XMMoEaruBzX6ly11Nc3BFqZh18C
	 0vP3mSU8DrmIg==
Date: Thu, 26 Jun 2025 16:05:48 +0000
To: usrp-users@lists.ettus.com
Message-ID: <Em91Ov87l2vdZyGAIqqXVox6Lekax9jLjIgz4qZqIqM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK4MDrk7LFTEcWBQ1QpxJZxhOOZKYnauDFNdgUy3VUkYQA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: PDJV5UAPQIURVBWZEOTHO6LA3QFANJO7
X-Message-ID-Hash: PDJV5UAPQIURVBWZEOTHO6LA3QFANJO7
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding RFNoC crossbar_routes
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PDJV5UAPQIURVBWZEOTHO6LA3QFANJO7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============0861544812267999612=="

This is a multi-part message in MIME format.

--===============0861544812267999612==
Content-Type: multipart/alternative;
 boundary="b1_Em91Ov87l2vdZyGAIqqXVox6Lekax9jLjIgz4qZqIqM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Em91Ov87l2vdZyGAIqqXVox6Lekax9jLjIgz4qZqIqM
Content-Type: text/plain; charset=us-ascii

Hi Brian,\
\
I had to play around with the crossbar route matrix myself yet,\
but looking at the code it seems like [at least for transport adapters the routes to themselves have to be included for route discovery purposes](https://github.com/EttusResearch/uhd/blob/master/host/python/uhd/rfnoc_utils/builder_config.py#L346) from the UHD host.\
From the example in the image_core.yaml that you linked it seems like this does not have to be the case for SEPs.\
\
When the image builder is run, it then gets translated into HDL code via the [mako template for the rfnoc_image_core.sv](https://github.com/EttusResearch/uhd/blob/master/host/python/uhd/rfnoc_utils/templates/rfnoc_image_core.sv.mako#L111).\
\
You could try and run the `rfnoc_image_builder` in `--generate-only` mode with your settings and check what the generated rfnoc_image_core.sv looks like.\
\
Looking at a default x410_X4_200 I have built previously it seems that the default is fully symetric for SEP connections:

> ```
>   //---------------------------------------------------------------------------
>   // CHDR Crossbar
>   //---------------------------------------------------------------------------
> 
>   wire [PORT_W-1:0] xb_to_ep0_tdata ;
>   wire              xb_to_ep0_tlast ;
>   wire              xb_to_ep0_tvalid;
>   wire              xb_to_ep0_tready;
>   wire [PORT_W-1:0] ep0_to_xb_tdata ;
>   wire              ep0_to_xb_tlast ;
>   wire              ep0_to_xb_tvalid;
>   wire              ep0_to_xb_tready;
>   wire [PORT_W-1:0] xb_to_ep1_tdata ;
>   wire              xb_to_ep1_tlast ;
>   wire              xb_to_ep1_tvalid;
>   wire              xb_to_ep1_tready;
>   wire [PORT_W-1:0] ep1_to_xb_tdata ;
>   wire              ep1_to_xb_tlast ;
>   wire              ep1_to_xb_tvalid;
>   wire              ep1_to_xb_tready;
>   wire [PORT_W-1:0] xb_to_ep2_tdata ;
>   wire              xb_to_ep2_tlast ;
>   wire              xb_to_ep2_tvalid;
>   wire              xb_to_ep2_tready;
> ...
> ```

\
Maybe someone else has used this feature more and can give more details.\
\
Regards,\
Niels

---

\
Brian Padalino wrote:

> I recently had some real trouble with some blocks not being addressable and
> the trace log output of a probe telling me "Nothing connected on
> device:1/xbar:0->1. Ignoring that path."
>
> I need to minimize the size of the crossbar, and I only have static
> connections in my system so I was trying to build a minimal crossbar and
> apparently failing to understand the crossbar_routes table.
>
> Looking here:
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x440_CG_1600_rfnoc_image_core.yml#L40
>
> Pasted here for completeness:
>
> # Rows correspond to input ports and columns correspond to output ports.
>
> # Entering a 1 includes and a 0 removes that route from the crossbar.
>
> crossbar_routes:
>
> # eth0  dma   ep1
>
> # eth1  ep0
>
> * \[ 1, 0, 0, 1, 1 \] # eth0 (QSFP Port 0)
> * \[ 0, 1, 0, 1, 1 \] # eth1 (QSFP Port 1)
> * \[ 0, 0, 1, 1, 1 \] # dma
> * \[ 1, 1, 1, 0, 0 \] # ep0 (radio0.0)
> * \[ 1, 1, 1, 0, 0 \] # ep1 (radio1.0)
>
> I am not sure input/output helps me here, but maybe from/to, so my first
> assumption is that I read the table such that across the top I say "From"
> and across the side I say "To". Is this correct or not?
>
> Next, since all the examples I see are symmetric in communication, I am not
> sure I fully understand any type of asymmetric connections. For example, my
> application is configured/monitored by localhost on the ARM on an X440, RX
> endpoints remote streams out 100Gbe/QSFP+ ports but doesn't need to receive
> anything from them, and TX endpoints receives from 100 Gbe/QSFP+. I'd also
> like my application to be able to send data out of the QSFP+ ports as well.
>
> I am not sure how to achieve this in the routes. I believe for connectivity
> I want to convey:
> *From*      -> *To*
> dma       -> eth0, eth1, txep
> eth0      -> txep
> eth1      -> txep
> txep      -> dma
> rx0ep     -> eth0
> rx1ep     -> eth1
>
> # Block connections
>
> radio0    -> rx0ep
> radio1    -> rx1ep
> txep\[3:0\] -> radio0
> txep\[7:4\] -> radio1
>
> Note that txep has no streaming outputs, and rx0ep/rx1ep have no streaming
> inputs. Also note that my control port is on txep. I think this is why I
> need the dma connected to txep in both directions, right?
>
> Lastly, in the original table, eth0 was connected to eth0. Same with the
> other transport adapters (eth1 and dma) - is this actually necessary? Is a
> route built here, or is it ignored? Can these entries be set to 0? In terms
> of a crossbar, I would have thought the diagonal is all 0's since we're
> never going to be connecting to ourselves?
>
> To convey this, here is my table:
>
> crossbar_routes:
>
> # eth0   eth1   dma  txep  rx0ep, rx1ep
>
> * \[   0,     0,    1,    0,     1,     0\] # eth0 (QSFP Port 0)
> * \[   0,     0,    1,    0,     0,     1\] # eth1 (QSFP Port 1)
> * \[   0,     0,    0,    1,     0,     0\] # dma
> * \[   1,     1,    1,    0,     0,     0\] # txep
> * \[   0,     0,    0,    0,     0,     0\] # rx0ep
> * \[   0,     0,    0,    0,     0,     0\] # rx1ep
>
> Did I get it right, or am I completely wrong here? I've tried lots of
> combinations, but the only one that works is when I am basically symmetric
> and fully connected with all the TA's which is suboptimal.
>
> Any guidance would be much appreciated.
>
> Thanks,
> Brian

--b1_Em91Ov87l2vdZyGAIqqXVox6Lekax9jLjIgz4qZqIqM
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Brian,<br><br>I had to play around with the crossbar route matrix mys=
elf yet,<br>but looking at the code it seems like <a href=3D"https://github=
.com/EttusResearch/uhd/blob/master/host/python/uhd/rfnoc_utils/builder_conf=
ig.py#L346" title=3D"">at least for transport adapters the routes to themse=
lves have to be included for route discovery purposes</a> from the UHD host=
.<br>From the example in the image_core.yaml that you linked it seems like =
this does not have to be the case for SEPs.<br><br>When the image builder i=
s run, it then gets translated into HDL code via the <a href=3D"https://git=
hub.com/EttusResearch/uhd/blob/master/host/python/uhd/rfnoc_utils/templates=
/rfnoc_image_core.sv.mako#L111" title=3D"">mako template for the rfnoc_imag=
e_core.sv</a>.<br><br>You could try and run the <code>rfnoc_image_builder</=
code> in <code>--generate-only</code> mode with your settings and check wha=
t the generated rfnoc_image_core.sv looks like.<br><br>Looking at a default=
 x410_X4_200 I have built previously it seems that the default is fully sym=
etric for SEP connections:</p><blockquote><pre><code>  //------------------=
---------------------------------------------------------
  // CHDR Crossbar
  //-----------------------------------------------------------------------=
----

  wire [PORT_W-1:0] xb_to_ep0_tdata ;
  wire              xb_to_ep0_tlast ;
  wire              xb_to_ep0_tvalid;
  wire              xb_to_ep0_tready;
  wire [PORT_W-1:0] ep0_to_xb_tdata ;
  wire              ep0_to_xb_tlast ;
  wire              ep0_to_xb_tvalid;
  wire              ep0_to_xb_tready;
  wire [PORT_W-1:0] xb_to_ep1_tdata ;
  wire              xb_to_ep1_tlast ;
  wire              xb_to_ep1_tvalid;
  wire              xb_to_ep1_tready;
  wire [PORT_W-1:0] ep1_to_xb_tdata ;
  wire              ep1_to_xb_tlast ;
  wire              ep1_to_xb_tvalid;
  wire              ep1_to_xb_tready;
  wire [PORT_W-1:0] xb_to_ep2_tdata ;
  wire              xb_to_ep2_tlast ;
  wire              xb_to_ep2_tvalid;
  wire              xb_to_ep2_tready;
...</code></pre></blockquote><p><br>Maybe someone else has used this featur=
e more and can give more details.<br><br>Regards,<br>Niels</p><div contente=
ditable=3D"false"><hr></div><p><br>Brian Padalino wrote:</p><blockquote><p>=
I recently had some real trouble with some blocks not being addressable and
the trace log output of a probe telling me "Nothing connected on
device:1/xbar:0-&gt;1. Ignoring that path."</p><p>I need to minimize the si=
ze of the crossbar, and I only have static
connections in my system so I was trying to build a minimal crossbar and
apparently failing to understand the crossbar_routes table.</p><p>Looking h=
ere:</p><p>https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/=
x400/x440_CG_1600_rfnoc_image_core.yml#L40</p><p>Pasted here for completene=
ss:</p><h1>Rows correspond to input ports and columns correspond to output =
ports.</h1><h1>Entering a 1 includes and a 0 removes that route from the cr=
ossbar.</h1><p>crossbar_routes:</p><h1>eth0  dma   ep1</h1><h1>eth1  ep0</h=
1><ul data-tight=3D"true"><li><p>[ 1, 0, 0, 1, 1 ] # eth0 (QSFP Port 0)</p>=
</li><li><p>[ 0, 1, 0, 1, 1 ] # eth1 (QSFP Port 1)</p></li><li><p>[ 0, 0, 1=
, 1, 1 ] # dma</p></li><li><p>[ 1, 1, 1, 0, 0 ] # ep0 (radio0.0)</p></li><l=
i><p>[ 1, 1, 1, 0, 0 ] # ep1 (radio1.0)</p></li></ul><p>I am not sure input=
/output helps me here, but maybe from/to, so my first
assumption is that I read the table such that across the top I say "From"
and across the side I say "To". Is this correct or not?</p><p>Next, since a=
ll the examples I see are symmetric in communication, I am not
sure I fully understand any type of asymmetric connections. For example, my
application is configured/monitored by localhost on the ARM on an X440, RX
endpoints remote streams out 100Gbe/QSFP+ ports but doesn't need to receive
anything from them, and TX endpoints receives from 100 Gbe/QSFP+. I'd also
like my application to be able to send data out of the QSFP+ ports as well.=
</p><p>I am not sure how to achieve this in the routes. I believe for conne=
ctivity
I want to convey:
<em>From</em>      -&gt; <em>To</em>
dma       -&gt; eth0, eth1, txep
eth0      -&gt; txep
eth1      -&gt; txep
txep      -&gt; dma
rx0ep     -&gt; eth0
rx1ep     -&gt; eth1</p><h1>Block connections</h1><p>radio0    -&gt; rx0ep
radio1    -&gt; rx1ep
txep[3:0] -&gt; radio0
txep[7:4] -&gt; radio1</p><p>Note that txep has no streaming outputs, and r=
x0ep/rx1ep have no streaming
inputs. Also note that my control port is on txep. I think this is why I
need the dma connected to txep in both directions, right?</p><p>Lastly, in =
the original table, eth0 was connected to eth0. Same with the
other transport adapters (eth1 and dma) - is this actually necessary? Is a
route built here, or is it ignored? Can these entries be set to 0? In terms
of a crossbar, I would have thought the diagonal is all 0's since we're
never going to be connecting to ourselves?</p><p>To convey this, here is my=
 table:</p><p>crossbar_routes:</p><h1>eth0   eth1   dma  txep  rx0ep, rx1ep=
</h1><ul data-tight=3D"true"><li><p>[   0,     0,    1,    0,     1,     0]=
 # eth0 (QSFP Port 0)</p></li><li><p>[   0,     0,    1,    0,     0,     1=
] # eth1 (QSFP Port 1)</p></li><li><p>[   0,     0,    0,    1,     0,     =
0] # dma</p></li><li><p>[   1,     1,    1,    0,     0,     0] # txep</p><=
/li><li><p>[   0,     0,    0,    0,     0,     0] # rx0ep</p></li><li><p>[=
   0,     0,    0,    0,     0,     0] # rx1ep</p></li></ul><p>Did I get it=
 right, or am I completely wrong here? I've tried lots of
combinations, but the only one that works is when I am basically symmetric
and fully connected with all the TA's which is suboptimal.</p><p>Any guidan=
ce would be much appreciated.</p><p>Thanks,
Brian</p></blockquote><p><br></p>

--b1_Em91Ov87l2vdZyGAIqqXVox6Lekax9jLjIgz4qZqIqM--

--===============0861544812267999612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0861544812267999612==--
