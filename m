Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28510347BA1
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 16:05:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC5B2383862
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 11:05:36 -0400 (EDT)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 54102383845
	for <usrp-users@lists.ettus.com>; Wed, 24 Mar 2021 11:04:43 -0400 (EDT)
Received: by mail-ot1-f50.google.com with SMTP id k14-20020a9d7dce0000b02901b866632f29so23312152otn.1
        for <usrp-users@lists.ettus.com>; Wed, 24 Mar 2021 08:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WHNwfynSL4nYFW/j6SJPMiGJQHu+LFbY8E2boe8MZ40=;
        b=Ra9+dkwfsAbxjsGzfJVWsdtaYWS1DiK7WdltLSZd6W0DKSsgsaT29pIR7o6qIsc+b8
         w547GozDtEnXyrvwfKMweZhlmIDugynTbeMOuQ5pNAmVw3rKF6NAT1jZ6E07tiUvEcLY
         +mNSKETzJUBHM2UmT+2VCXtu+9jtMAVZkRxmu19RRrCMTZXhFgGy5G3PJZY80lghG8DR
         NYL45ExBpIehMK/ph39EzpRTtB4Y7lJLYlwpAXhvAJ5vEp6FXhxb+SCkivLHaTbQzVGE
         Z8IsylUG5/qqHN7x//v3Rc8RMbUfhRXtHlvmSDb3nlyeOjwB+s93vmuaYTLavkcGEF9a
         HPgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WHNwfynSL4nYFW/j6SJPMiGJQHu+LFbY8E2boe8MZ40=;
        b=dcGFWhfrUS4DMy0GDhSOJB7XG2CwANn1F7WMZ13J5+MXzfjswMygExnIJVGa7pRcDw
         ejcJAG3LDXHwpPh0337GL/VxBd+Mbx6bYis9xcLbM4tDOAlmtjV1/hRU0h/5mkBZ8164
         Lu3FTmSvnZrA5FPMAurNYpjO+NdUsoq41kHL3ogCvdEubveeI3FS7zUWx9YCPUO0Jj3E
         tNiCFtw647fiPzmK66Od+XMRsKuKsbGEp+x/Pay64hYQ+RSw+LbwMKNJrsXVvr7o5UIj
         MX2S4uSwBi9OvzctRHKPADsvVkPiZVpAwWkbnai1pPipBj3u+A/XOCasRk6MmB2BT/6m
         hpxA==
X-Gm-Message-State: AOAM531E0DyKynL8ctVOyY9yFAAThl2VN4a2GSaqeC5D0kowkJ6rZQbU
	lVWmTH0EXrqVFDqhqXJ++96LGMwt2spBLx6arLTeLg==
X-Google-Smtp-Source: ABdhPJyhqqEzaeXQfc2OlzL5/tDANVvl932bU0mbrYxp3qKvkmnMReAvunQfF57G5kaWcKgrE69u7SSoqs99hEaD+PA=
X-Received: by 2002:a9d:4049:: with SMTP id o9mr3610946oti.58.1616598282438;
 Wed, 24 Mar 2021 08:04:42 -0700 (PDT)
MIME-Version: 1.0
References: <b09bdc4deff04896a3fe314aa6923414@campus.tu-berlin.de>
 <af6f93d0dcac446dbc7c78092485ef81@campus.tu-berlin.de> <4972c704a15d4dd88ed86eb6f3304262@campus.tu-berlin.de>
In-Reply-To: <4972c704a15d4dd88ed86eb6f3304262@campus.tu-berlin.de>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 24 Mar 2021 08:04:31 -0700
Message-ID: <CAB__hTRg9Ym_dhbHb68rrB5-T+crb1SopVrjrzfOAEgSt=CAbw@mail.gmail.com>
To: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
Message-ID-Hash: WHBOITJENS5HGWJF2D5L6TW5CXYIYCPU
X-Message-ID-Hash: WHBOITJENS5HGWJF2D5L6TW5CXYIYCPU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc channel mapping
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WHBOITJENS5HGWJF2D5L6TW5CXYIYCPU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1825192007881212288=="

--===============1825192007881212288==
Content-Type: multipart/alternative; boundary="0000000000005eea1605be499e5f"

--0000000000005eea1605be499e5f
Content-Type: text/plain; charset="UTF-8"

Hi Kasim,
The Block ID "X/Radio#Y:Z" identifies the motherboard X, RFNoC block Y, and
block-port Z. With this you can create an arbitrary graph to connect any
blocks you want. Or, you can still use multi_usrp if the default graph is
good for you.

With the tx and rx streamers, you have to call create_tx_streamer() (or the
"rx" equivalent) and set the "block_id" and "block_port" streamer args.
This is not a great design and is not well documented. Look at the couple
of Ettus rfnoc examples regarding use of this function.

For setting radio parameters such as freq, etc, you do need to do this for
each Radio block (and port for cases where the block has 2 ports such as
TwinRx). For rate, you use the DDC or DUC block controller.
Rob

On Wed, Mar 24, 2021 at 7:40 AM Chang, Kaixin <k.chang@campus.tu-berlin.de>
wrote:

> I just noticed that there is no set_subdev() function in radio_ctrl block,
> how do we configure subdev and channel for rfnoc then?
>
>
> Thank you all for advice and help
> ------------------------------
> *From:* Chang, Kaixin <k.chang@campus.tu-berlin.de>
> *Sent:* 24 March 2021 14:23:28
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: rfnoc channel mapping
>
>
> I found multi_usrp_rfnoc.cpp but no hpp, is this still in progress?
> ------------------------------
> *From:* Chang, Kaixin <k.chang@campus.tu-berlin.de>
> *Sent:* 24 March 2021 14:07:10
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] rfnoc channel mapping
>
>
> Dear Ettus Team,
>
>
> I have a question about the channel mapping with rfnoc api.
>
>
> With multi_usrp class I can set several subdev like:
>
>     set_rx_subdev_spec("A:0 B:0", 0);
>     set_rx_subdev_spec("A:0", 1);
> then I have channel 0 (A:0 of motherboard 0), channel 1 (B:0 of mb 0) and
> channel 2 (A:0 of mb1). Then I can use usrp->set_rate(rate, channel) to
> set different channel rate. And I can set for the streamer:
>     stream_args.channels  = {0, 1, 2}
>
> However with rfnoc api, if I want to use set_rate(rate, channel), I have
> to create an object:
>
>     uhd::rfnoc::radio_control::sptr rx_radio_ctrl =
> graph->get_block<uhd::rfnoc::radio_control>("0/Radio#0:0");
> which is marked by this block id "0/Radio#0:0". I wonder if I have
> several motherboards and daughterboards with different block to use, if
> their corresponding Radio blocks are different like: "0/Radio#0:0",
> "0/Radio#1:0", "0/Radio#2:0", then shall I do the same as above with
> multi_usrp to set channel and then set freq, rate, etc with only one
> radio_ctrl object. Or I have to create for each daughterboard frontend, for
> example A:0 of motherboard 2 a radio_ctrl object with only one channel? How
> do I set the tx streamer's channel then?
>
> Sincerely
>
> Kasim
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005eea1605be499e5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Kasim,<div>The Block ID &quot;X/Radio#=
Y:Z&quot; identifies the motherboard X, RFNoC block Y, and block-port Z. Wi=
th this you can create an arbitrary graph to connect any blocks you want. O=
r, you can still use multi_usrp if the default graph is good for you.=C2=A0=
</div><div><br></div><div>With the tx and rx streamers, you have to call cr=
eate_tx_streamer() (or the &quot;rx&quot; equivalent) and set the &quot;blo=
ck_id&quot; and &quot;block_port&quot; streamer args. This is not a great d=
esign and=C2=A0is not well documented. Look at the couple of Ettus rfnoc ex=
amples regarding use of this function.</div><div><br></div><div>For setting=
 radio parameters such as freq, etc, you do need to do this for each Radio =
block (and port for cases where the block has 2 ports such as TwinRx). For =
rate, you use the DDC or DUC block controller.</div><div>Rob</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, M=
ar 24, 2021 at 7:40 AM Chang, Kaixin &lt;<a href=3D"mailto:k.chang@campus.t=
u-berlin.de">k.chang@campus.tu-berlin.de</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">

<div id=3D"gmail-m_-6082138210965720915divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>I just noticed that there is no set_subdev() function in radio_ctrl bloc=
k, how do we configure subdev and channel for rfnoc then?</p>
<p><br>
</p>
<p>Thank you all for advice and help<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-6082138210965720915divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> Chang, Kaixin &lt;<a href=3D"mailto:k.chang@campus.tu-berlin.de" tar=
get=3D"_blank">k.chang@campus.tu-berlin.de</a>&gt;<br>
<b>Sent:</b> 24 March 2021 14:23:28<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: rfnoc channel mapping</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_-6082138210965720915divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>I found <span>multi_usrp_rfnoc</span>.cpp but no hpp, is this still in p=
rogress?<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-6082138210965720915divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> Chang, Kaixin &lt;<a href=3D"mailto:k.chang@campus.tu-berlin.de" tar=
get=3D"_blank">k.chang@campus.tu-berlin.de</a>&gt;<br>
<b>Sent:</b> 24 March 2021 14:07:10<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] rfnoc channel mapping</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_-6082138210965720915divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>Dear Ettus Team,</p>
<p><br>
</p>
<p>I have a question about the channel mapping with rfnoc api. <br>
</p>
<p><br>
</p>
<p>With multi_usrp class I can set several subdev like:<br>
</p>
<p></p>
<div>
<div>=C2=A0=C2=A0=C2=A0 set_rx_subdev_spec(<span>&quot;A:0 B:0&quot;</span>=
, 0);</div>
=C2=A0=C2=A0=C2=A0 set_rx_subdev_spec(<span>&quot;A:0&quot;</span>, 1);</di=
v>
then I have <span>channel 0 (A:0 of motherboard 0), channel 1 (B:0 of mb 0)=
 and channel 2 (A:0 of mb1)</span>. Then I can use usrp-&gt;set_rate(rate, =
channel) to set different channel rate. And I can set for the streamer:
<div>=C2=A0=C2=A0=C2=A0 stream_args.channels=C2=A0 =3D {0, 1, 2}<br>
</div>
<div><br>
</div>
<div>However with rfnoc api, if I want to use <span>set_rate(rate, channel)=
</span>, I have to create an object:<span><br>
</span>
<p><span></span><span></span></p>
<div>=C2=A0=C2=A0=C2=A0 uhd::rfnoc::radio_control::sptr rx_radio_ctrl =3D g=
raph-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(&quot;0/Radio#0:0&quot;=
);</div>
which is marked by this block id <span>&quot;0/Radio#0:0&quot;</span>. I wo=
nder if I have several motherboards and daughterboards with different block=
 to use, if their corresponding Radio blocks are different like:
<span>&quot;0/Radio#0:0&quot;</span>, <span>&quot;0/Radio#1:0&quot;</span>,=
 <span>&quot;0/Radio#2:0&quot;</span>, then shall I do the same as above wi=
th multi_usrp to set channel and then set freq, rate, etc with only one rad=
io_ctrl object. Or I have to create for each daughterboard frontend,
 for example A:0 of motherboard 2 a radio_ctrl object with only one channel=
? How do I set the tx streamer&#39;s channel then?</div>
<div><br>
</div>
<div>Sincerely</div>
<div><br>
</div>
<div>Kasim<br>
</div>
<p></p>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000005eea1605be499e5f--

--===============1825192007881212288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1825192007881212288==--
