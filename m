Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C76AC61FAAD
	for <lists+usrp-users@lfdr.de>; Mon,  7 Nov 2022 17:57:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6FC473809FA
	for <lists+usrp-users@lfdr.de>; Mon,  7 Nov 2022 11:57:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667840226; bh=cU9LtfRn7cWg+caT8suPoXI/2D0ftH9nNHZpcbiSs+M=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DJG7WZQMsPnQYJmfAaGwiIeazaOgFEvtzD//NgcYYrUPNy3Qy7fHmM/yXT9fhd/57
	 72wOT1YAgH0toJbAAXeAj2PLFcpvLd3IsmQbgtLhu6NAL0Q2J9agLUP+yzTox2niwH
	 zZbS+PYE225xy4RUQgMIWbrX3Xl8bTp/ZSME/SLDoqaPtEkhO/Fw4UkJDicrrv73DO
	 axrmaLozg8xO9qLMjD4/NDh7LHX9gZ9MHKqLEEuYoxMbHmwpER0HITToQPnLruA+Le
	 h3ACfoMNMIgW7dCHzT7cKOnVzATjBQpQWCMpsmVfZYxC6V5iWgG64G8G+pdNctTBN0
	 98DoyvYYGRBNQ==
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by mm2.emwd.com (Postfix) with ESMTPS id C2B4F3809F6
	for <usrp-users@lists.ettus.com>; Mon,  7 Nov 2022 11:55:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XTur9lbe";
	dkim-atps=neutral
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-3701a0681daso110323417b3.4
        for <usrp-users@lists.ettus.com>; Mon, 07 Nov 2022 08:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yY/LuxmyKWcPgTWNFaRvky+pfFgTLDmvWenZufSak4w=;
        b=XTur9lbeZirnLVirSKBZ1tUGfE9ngvGWNMu4sC2JDiYZ2IEN+ygpNoXGh3euXNaXlk
         2gGg7Q4zg38GMqCXsMVifk+EWwZVMvrH7OlXoeAkRwKfOkEZKDHeyGHIHnA8a3HGMcgL
         3n/8d2RTD4OJhzvTw/xPX6rFXw/l93phE/j4LLm9cNzzY5Ei3dr34vYuNwxbMMZ1GbO7
         YslrQZLpS6A4XQ6o2WEDZOXtrgPZD778yAu0xz+HSQNN2FagJB8kNQggRaTSivBJ35FV
         kVA0ReMtNToXBbipplkk1/vCzNUonz+I8IliWPMIbtxDltJLeOuAg/B+vADu9le75SYL
         KUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yY/LuxmyKWcPgTWNFaRvky+pfFgTLDmvWenZufSak4w=;
        b=JpZ6n5AzHIfKjPwhHa7KNd4Sny/dZi0XaUu42xDVOD6sAYdqGyw24sUUuGjHhLePJ+
         efoYlJH4f5RpaLlqzxAWMIVdxZ4vsuLlWEMBNLNguB8iuxXacsHKCIJxLU3lGWBI7LDx
         eXNEX6GGQBKCHxAbJ7K4EGmh6nLrqXLcJ96FdDcTM1GIYu+kJZBOu9zeU8PJyqJgvM8P
         l/60aa3d3w0m3HQqWFw2uA0Dd+z7VtHAKMG1dpcA1EuolFDaBhIXU1NLcTX6REEdjcMN
         0OkdcZp2dg6XUky7XVYyD+M7JC0L6tu7q3mxxLBXZLrAJU2hfCHVoCV+jOgpkXjdQdo4
         vZQQ==
X-Gm-Message-State: ACrzQf25LJqOCqs7OqjClvU2m5x0vgDJ0neWDd3Ruv6MSQJ+Wjuv7NHK
	qQLQBGm+XSxHDBgm+H+vw/DwYq18IztX7EiQ4Cm+AT9YRyqt0Vu2
X-Google-Smtp-Source: AMsMyM5iBB/4/5TiFowGQ7nKqdH+Eh787e3mVeLnbHvdxKcxpn8B6P8+zNMfc0NpYANfUQ/wQNP//5X67ULA9Vcu4Wg=
X-Received: by 2002:a81:57d2:0:b0:36b:cc32:a150 with SMTP id
 l201-20020a8157d2000000b0036bcc32a150mr49019530ywb.420.1667840155572; Mon, 07
 Nov 2022 08:55:55 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Ps9k5kMVWoh4QTvkJ4+BhDnKoXMBxP0cuQFoj3XdLNZGQ@mail.gmail.com>
 <a1573c8d-a475-a4e5-7921-dfeee7e1a40d@itsystems.it>
In-Reply-To: <a1573c8d-a475-a4e5-7921-dfeee7e1a40d@itsystems.it>
From: sp <stackprogramer@gmail.com>
Date: Mon, 7 Nov 2022 16:55:44 +0000
Message-ID: <CAA=S3PtmMdkZvDBZg7xri-iE0SBDQ1C23v3f9kkwe_AqeiYZ+A@mail.gmail.com>
To: Paolo Palana <p.palana@itsystems.it>
Message-ID-Hash: 7VL5X53CKI7NG4IBJSGV6KUPAJYW56JA
X-Message-ID-Hash: 7VL5X53CKI7NG4IBJSGV6KUPAJYW56JA
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can I define a global reg variable in Verilog between RFNOC blocks?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7VL5X53CKI7NG4IBJSGV6KUPAJYW56JA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5497404077166461659=="

--===============5497404077166461659==
Content-Type: multipart/alternative; boundary="00000000000003dc9f05ece44cbc"

--00000000000003dc9f05ece44cbc
Content-Type: text/plain; charset="UTF-8"

Hi, I tested your way but I have challenges with it. I described it in
the below link. do you have any offer?
Thanks very much

https://lists.ettus.com/empathy/thread/A65LFSBUISOLPBGIRJWSJYBESRPMPEPC

On Mon, Aug 1, 2022 at 1:47 PM Paolo Palana <p.palana@itsystems.it> wrote:

> For experimental purpose I did something like you say.
>
> Referring to usrp X300
>
> 1. add the reg variable to rfnoc_ce_default_inst_x300.v (or the relevant
> file for your radio)
>
> 2. add to the noc _block module declaration an additional input port e.g.
>
> module noc_test #(
>    parameter NOC_ID = 64'h1234_0000_0000_1234,
>    parameter STR_SINK_FIFOSIZE = 11,
>    parameter NUM_PORTS  = 1)
> (
>    input bus_clk, input bus_rst,
>    input ce_clk, input ce_rst,
>    input  [63:0] my_new_port,            <---- EXAMPLE, this is my new port
>    input  [63:0] i_tdata, input  i_tlast, input  i_tvalid, output i_tready,
>    output [63:0] o_tdata, output o_tlast, output o_tvalid, input o_tready,
>    output [63:0] debug
> );
>
>
> 3. inside rfnoc_ce_default_inst_x300.v (or the relevant file for your
> radio) connect the reg variable with the
>
> new port on the noc_block
>
> 4. Now you can manage the (shared) reg variable from inside the noc block.
>
> Hope this can be of some help.
>
> Have a good day,
>
> paolo
>
> On 7/31/22 17:52, sp wrote:
> > How can I define a global reg variable in Verilog between RFNOC blocks?
> > I developed two RFNOC blocks: RFNOC block A, and RFNOC block B
> > How can define a reg variable that shares between RFNOC blocks in USRP?
> > Can anyone guide me?
> >
> > I study about global reg variable in the Verilog module, see below
> > link,  but I can not do it for RFNOC blocks...
> > How can implement this mechanism in RFNOC blocks
> >
> https://www.edaboard.com/threads/how-to-define-global-variable-in-verilog.174172/
> >
> > Thanks in advance
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000003dc9f05ece44cbc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I tested your way but I have challenges with it. I des=
cribed it in the=C2=A0below link. do you have any offer?<div>Thanks very mu=
ch<br><div><br></div><div><a href=3D"https://lists.ettus.com/empathy/thread=
/A65LFSBUISOLPBGIRJWSJYBESRPMPEPC">https://lists.ettus.com/empathy/thread/A=
65LFSBUISOLPBGIRJWSJYBESRPMPEPC</a><br></div></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 1, 2022 at 1=
:47 PM Paolo Palana &lt;<a href=3D"mailto:p.palana@itsystems.it">p.palana@i=
tsystems.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">For experimental purpose I did something like you say.<br>
<br>
Referring to usrp X300<br>
<br>
1. add the reg variable to rfnoc_ce_default_inst_x300.v (or the relevant <b=
r>
file for your radio)<br>
<br>
2. add to the noc _block module declaration an additional input port e.g.<b=
r>
<br>
module noc_test #(<br>
=C2=A0=C2=A0 parameter NOC_ID =3D 64&#39;h1234_0000_0000_1234,<br>
=C2=A0=C2=A0 parameter STR_SINK_FIFOSIZE =3D 11,<br>
=C2=A0=C2=A0 parameter NUM_PORTS=C2=A0 =3D 1)<br>
(<br>
=C2=A0=C2=A0 input bus_clk, input bus_rst,<br>
=C2=A0=C2=A0 input ce_clk, input ce_rst,<br>
=C2=A0=C2=A0 input=C2=A0 [63:0] my_new_port,=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 &lt;---- EXAMPLE, this is my new port<br>
=C2=A0=C2=A0 input=C2=A0 [63:0] i_tdata, input=C2=A0 i_tlast, input=C2=A0 i=
_tvalid, output i_tready,<br>
=C2=A0=C2=A0 output [63:0] o_tdata, output o_tlast, output o_tvalid, input =
o_tready,<br>
=C2=A0=C2=A0 output [63:0] debug<br>
);<br>
<br>
<br>
3. inside rfnoc_ce_default_inst_x300.v (or the relevant file for your <br>
radio) connect the reg variable with the<br>
<br>
new port on the noc_block<br>
<br>
4. Now you can manage the (shared) reg variable from inside the noc block.<=
br>
<br>
Hope this can be of some help.<br>
<br>
Have a good day,<br>
<br>
paolo<br>
<br>
On 7/31/22 17:52, sp wrote:<br>
&gt; How can I define a global reg variable in Verilog between RFNOC blocks=
?<br>
&gt; I developed two RFNOC blocks: RFNOC block A, and RFNOC block B<br>
&gt; How can define a reg variable=C2=A0that shares between RFNOC blocks in=
 USRP?<br>
&gt; Can anyone guide me?<br>
&gt;<br>
&gt; I study about global reg variable=C2=A0in the Verilog module, see belo=
w <br>
&gt; link,=C2=A0=C2=A0but I can not do it for RFNOC blocks...<br>
&gt; How can implement this mechanism in RFNOC blocks<br>
&gt; <a href=3D"https://www.edaboard.com/threads/how-to-define-global-varia=
ble-in-verilog.174172/" rel=3D"noreferrer" target=3D"_blank">https://www.ed=
aboard.com/threads/how-to-define-global-variable-in-verilog.174172/</a><br>
&gt;<br>
&gt; Thanks in advance<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000003dc9f05ece44cbc--

--===============5497404077166461659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5497404077166461659==--
