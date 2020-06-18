Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC8D1FFE29
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2020 00:29:06 +0200 (CEST)
Received: from [::1] (port=60520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jm31q-0005Hq-8U; Thu, 18 Jun 2020 18:29:02 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:40109)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <colbyboyer@genxcomminc.com>)
 id 1jm31l-0005Dc-Vg
 for usrp-users@lists.ettus.com; Thu, 18 Jun 2020 18:28:58 -0400
Received: by mail-ot1-f44.google.com with SMTP id s13so5834176otd.7
 for <usrp-users@lists.ettus.com>; Thu, 18 Jun 2020 15:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=genxcomminc.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l1Fs/s6LPyzNpjVj9c58VpG+SfYL9W3IoQy8eBBe++w=;
 b=Ld8V+IIcZY1XxmFtoOxAGtEa7h6aM0675Go21H/QWI25SesFaaklfOG9q38UKYN3bP
 ISL5+ezr18oA7qveijIW2InpEXeeUgjEo/Q0rckg0/KcEh3njpJ3VC1hM/rRF+TPLWzi
 Rmv/JhShOLq4UTRMq39k8ngE+sSmaEtAqu9xAEPZr9doZSbNcypZAvaoSXtaErQrV5Vq
 Cewq6pbjs5LMclFNXg9NOG4P0wIGvRtoLNnZp2bvRSPSgCm2+CGpVPVPQv8qeNmlMs5c
 S75LqyEuV5RA/KYZf2owaQDJwwcD7K5PMayGDfpXHnzW9BO6OszeIi4YUXM8TzdFZmJU
 FOBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l1Fs/s6LPyzNpjVj9c58VpG+SfYL9W3IoQy8eBBe++w=;
 b=bLi2Tcf5FuWlLT6fxgM8HR73UEyiNqG78qcdgPur6zn/mjRFl/twtQl0Wkip9KDe+k
 L8evGT0kXpywxPaL60oSWZ9Atir9jx2BrMx0PuiKPxR7DwWotOcwtffwt0hsVGNU1FlZ
 8UFwL1V/gUcW5uw2mMxO84T4i4yR37n8FbUMGR6nw4eMUoYBeCVy/BKYbJF+5GTd0Ks/
 8CMjvnhm5T5633VvTG1sYDj1cR0VfXBln6kb2TWKbkkGMaemCwhhq0+xuSoNP2Qp9KBH
 PX2JNMKwF8VmZq743hIQ8PUSDcFvzy2dcmGJxZR0M+K+FQb8i8n7u+CARVzjbRIamzKn
 XJuA==
X-Gm-Message-State: AOAM531X8GU//cIDxohoKQwtAsYTl+v6ijd98nTh07DrvNmTI5eRkW3y
 NSwqjfKouAtllF+HuqzjNZUGoezzEy+x0PIy5/N0OA==
X-Google-Smtp-Source: ABdhPJzCdEQNXmR2kySUXOv325tEiyy++PA4/5z3WhgEnntUswK3QfMHOlko45Y3a38+aJfhW348zBZf9K2F9Q1BQWk=
X-Received: by 2002:a05:6830:3149:: with SMTP id
 c9mr768538ots.302.1592519297150; 
 Thu, 18 Jun 2020 15:28:17 -0700 (PDT)
MIME-Version: 1.0
References: <CACxOa3Zr_hPaEtu1_OGHfZn=7B_t1CWmYBYasVYVkrg4ZOaSpg@mail.gmail.com>
 <5EEB7DDA.2060403@gmail.com>
In-Reply-To: <5EEB7DDA.2060403@gmail.com>
Date: Thu, 18 Jun 2020 17:28:06 -0500
Message-ID: <CACxOa3ZW4x+2+vXnpwvf34bUdx+F_rQ8pADBoyDB7WAHJnv1MA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] SW control of DB TX/RX DSA on N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Colby Boyer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Colby Boyer <colbyboyer@genxcomminc.com>
Content-Type: multipart/mixed; boundary="===============3472437320018609140=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3472437320018609140==
Content-Type: multipart/alternative; boundary="0000000000000142e205a8634b65"

--0000000000000142e205a8634b65
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

Thank you for your response and pointing me in the right direction.

Yes, I see that flow now after tracing through UHD to a poke32 interface
for twiddling the bits. Before I was mostly looking at the Verilog FPGA
code and how the registers were being mapped was not that clear. It looks
like the ATR idle register is being repurposed to control the TX and RX
DSAs.

It seems that the DSA command is put out over the wire via the CHDR
interface with the following path for the N310. Host -> 10 GigE -> N310
10GigE Switch -> RFNoC -> radio core. It does not interact with MPM running
on Linux, is that correct?

Looking at the gain control for the AD9371, this looks to be translated to
an RPC call and sent to MPM that calls the mykonos API/SPI transaction.
Does that sound about correct?

Thanks
Colby

On Thu, Jun 18, 2020 at 9:45 AM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 06/17/2020 02:31 PM, Colby Boyer via USRP-users wrote:
> > Dear All,
> >
> > I have a question about the control of the TX/RX DSAs on the N310
> > platform.
> >
> > I have a specific line-up for the RX and TX chains and I'd like to set
> > specific values to the TX and RX DSAs that are on the N310's daughter
> > board card. Are the control lines for the DSA's hooked up to SW for
> > control via UHD/MPM? From what I can tell, this is not a SW enabled
> > feature on the N310.
> >
> > Looking through the FPGA code, the DSAs are hooked up to the
> > dsa_tx<1,2>_<a,b>_out_iob buffers. I've traced these lines as follows:
> >
> > IO buffer => db_gpio_out wire in top module n3xx => n3xx_core =>
> > db_fe_core => db_control => db_gpio_atr (gpio_atr module).
> >
> > Inside the gpio_atr verilog module, there are some registers related
> > to the ATR logic but not DSAs. There is logic to control the db_gpio
> > via a gpio_out_fab signal line, but I trace this signal and it goes
> > back up to the top level n3xx module as an unconnected wire.
> >
> > Is there a connection that I am missing?
> >
> > Thank you,
> > Colby
> >
> Took me a while to find the schematic for the N3XX daughtercard.
>
> The DSAs are made by Peregrine (PE43704 in the RX direction, PE42553 in
> the TX direction).
>
> I'd be surprised if these weren't actually supported in UHD.  If you use
> the "get_gain_names" API call:
>
>
> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html#a756c14c66c5d9530f69e99afd6a4bb2d
>
> You can see which individual gain-control elements are available to the
> UHD, and then you can use a specific one of those gain-control elements
>    in a "set_gain" call:
>
>
> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html#a81ee1048dbd04c8664f1ea95129203f4
>
>
> Using the 2nd form of the call that takes a gain name.   Without using a
> gain name, UHD will distribute gain settings over the gain-setting
>    elements that are available to it, typically optimizing for noise
> figure in those settings.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000142e205a8634b65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus, <br></div><div><br></div><div>Thank you fo=
r your response and pointing me in the right direction. <br></div><div><br>=
</div><div>Yes, I see that flow now after tracing through UHD to a poke32 i=
nterface for twiddling the bits. Before I was mostly looking at the Verilog=
 FPGA code and how the registers were being mapped was not that clear. It l=
ooks like the ATR idle register is being repurposed to control the TX and R=
X DSAs. <br></div><div><br></div><div>It seems that the DSA command is put =
out over the wire via the CHDR interface with the following path for the N3=
10. Host -&gt; 10 GigE -&gt; N310 10GigE Switch -&gt; RFNoC -&gt; radio cor=
e. It does not interact with MPM running on Linux, is that correct?</div><d=
iv><br></div><div>Looking at the gain control for the AD9371, this looks to=
 be translated to an RPC call and sent to MPM that calls the mykonos API/SP=
I transaction. Does that sound about correct?<br></div><div><br></div><div>=
Thanks</div><div>Colby<br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 18, 2020 at 9:45 AM Marcus D. L=
eech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">On 06/17/2020 02:31 PM, Colby Boyer via USRP-users wro=
te:<br>
&gt; Dear All,<br>
&gt;<br>
&gt; I have a question about the control of the TX/RX DSAs on the N310 <br>
&gt; platform.<br>
&gt;<br>
&gt; I have a specific line-up for the RX and TX chains and I&#39;d like to=
 set <br>
&gt; specific values to the TX and RX DSAs that are on the N310&#39;s daugh=
ter <br>
&gt; board card. Are the control lines for the DSA&#39;s hooked up to SW fo=
r <br>
&gt; control via UHD/MPM? From what I can tell, this is not a SW enabled <b=
r>
&gt; feature on the N310.<br>
&gt;<br>
&gt; Looking through the FPGA code, the DSAs are hooked up to the <br>
&gt; dsa_tx&lt;1,2&gt;_&lt;a,b&gt;_out_iob buffers. I&#39;ve traced these l=
ines as follows:<br>
&gt;<br>
&gt; IO buffer =3D&gt; db_gpio_out wire in top module n3xx =3D&gt; n3xx_cor=
e =3D&gt; <br>
&gt; db_fe_core =3D&gt; db_control =3D&gt; db_gpio_atr (gpio_atr module).<b=
r>
&gt;<br>
&gt; Inside the gpio_atr verilog module, there are some registers related <=
br>
&gt; to the ATR logic but not DSAs. There is logic to control the db_gpio <=
br>
&gt; via a gpio_out_fab signal line, but I trace this signal and it goes <b=
r>
&gt; back up to the top level n3xx module as an unconnected wire.<br>
&gt;<br>
&gt; Is there a connection that I am missing?<br>
&gt;<br>
&gt; Thank you,<br>
&gt; Colby<br>
&gt;<br>
Took me a while to find the schematic for the N3XX daughtercard.<br>
<br>
The DSAs are made by Peregrine (PE43704 in the RX direction, PE42553 in <br=
>
the TX direction).<br>
<br>
I&#39;d be surprised if these weren&#39;t actually supported in UHD.=C2=A0 =
If you use <br>
the &quot;get_gain_names&quot; API call:<br>
<br>
<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__blo=
ck.html#a756c14c66c5d9530f69e99afd6a4bb2d" rel=3D"noreferrer" target=3D"_bl=
ank">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.htm=
l#a756c14c66c5d9530f69e99afd6a4bb2d</a><br>
<br>
You can see which individual gain-control elements are available to the <br=
>
UHD, and then you can use a specific one of those gain-control elements<br>
=C2=A0 =C2=A0in a &quot;set_gain&quot; call:<br>
<br>
<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__blo=
ck.html#a81ee1048dbd04c8664f1ea95129203f4" rel=3D"noreferrer" target=3D"_bl=
ank">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.htm=
l#a81ee1048dbd04c8664f1ea95129203f4</a><br>
<br>
<br>
Using the 2nd form of the call that takes a gain name.=C2=A0 =C2=A0Without =
using a <br>
gain name, UHD will distribute gain settings over the gain-setting<br>
=C2=A0 =C2=A0elements that are available to it, typically optimizing for no=
ise <br>
figure in those settings.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000142e205a8634b65--


--===============3472437320018609140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3472437320018609140==--

