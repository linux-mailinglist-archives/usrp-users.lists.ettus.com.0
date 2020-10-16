Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 661D428FCAC
	for <lists+usrp-users@lfdr.de>; Fri, 16 Oct 2020 05:20:31 +0200 (CEST)
Received: from [::1] (port=45592 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kTGI4-00025G-RM; Thu, 15 Oct 2020 23:20:24 -0400
Received: from mail-vs1-f45.google.com ([209.85.217.45]:38345)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kTGI0-0001tL-HV
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 23:20:20 -0400
Received: by mail-vs1-f45.google.com with SMTP id b3so648522vsc.5
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 20:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jCsyWB0Rkg1+pCDo53KFtmxUTES4cICG5od6mRyL098=;
 b=T5Bxf9Uj+YzNzmxZ6GKDoOu4/IIrws0MJWOQ5PUOsx7KyN+K9980VpZ/xwVY/OhANY
 t6DqGFUW9i2Bay8rdk1f/pIbhq/AtQSduBVPEjedflVekk+vfME9QB/70/8zri1oU5Wi
 Ij1g31Mt70N0ZYWCH/akFJUsWy6Y0GPYUzqFEFwwSEVN6iIIqDTzrN4kOQ11n4DyuKuP
 WrPRIm3VeERqIGrqxIMyN137Q7YoHMNi9LpOCRk7kYKKhZxgZZ24gzZMJ/LEtXx7fZaz
 ctV8G4y+5Y9lBkZXH84Fbizzz0bxhN2WX1stLjTTqzmJQAJxLql2GaeNkpkeFLOWdFoZ
 1HGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jCsyWB0Rkg1+pCDo53KFtmxUTES4cICG5od6mRyL098=;
 b=Q50FC2cI8IUmPcHhMPHYypahIJUmE6avT0ZTKJ+6tlY/b5r7Y0vWjq27FaWs5Fogu4
 yCtDRxpYNC9yBAXzSBpdKTn7v8AOUiPfevbSlPPTI2xKMUrrmOGCXk4RNiJvCBilOR1d
 42LEPtVY2ilbL9s8jwNQ47PQxbZn2eDnDHiJdQpxYRZYVrtrVdd3+5pkXGUhjV879fv2
 3hjoqFlmV0cugS1QtrK/riM//P27bbUzpVH0b6LwWA7LWTBU7EzLwI2ClgsC8Ectq7mM
 Dzty5msHiA33o7/1WNr7eDET0S5hrUygKY95bAHZGt6CK8OyUPkjpxLPjJ5ma7qMNdwF
 bATQ==
X-Gm-Message-State: AOAM531OGEyEldcck2QTS510684c5zcnDOndDXOWpSrYWxWrgNXzQYtd
 2A4hCTh7NYJoFmi421wuoSQ4DZ7uBcJxGl5S0k89TOeb
X-Google-Smtp-Source: ABdhPJxeFg/UWfI82EvRY/u2BQ9MMhf0XscaOida5W1bkcbTc3yCxFM3CYnVEwHkfMQxwTdcYNYYVGoOZdc5ga5BaHk=
X-Received: by 2002:a05:6102:3014:: with SMTP id
 s20mr837625vsa.27.1602818379883; 
 Thu, 15 Oct 2020 20:19:39 -0700 (PDT)
MIME-Version: 1.0
References: <3a0cb273ddd2434db40042cfc8af37a8@gtri.gatech.edu>
In-Reply-To: <3a0cb273ddd2434db40042cfc8af37a8@gtri.gatech.edu>
Date: Thu, 15 Oct 2020 23:19:04 -0400
Message-ID: <CAL7q81va3Laww1cE_8HPKvda6DRe82aa2QYrJG7_nHUTAd0CyQ@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Error RFNoC X310 uhd_cal_tx_dc_offset
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============3673701072794182312=="
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

--===============3673701072794182312==
Content-Type: multipart/alternative; boundary="0000000000002c40bb05b1c13cfe"

--0000000000002c40bb05b1c13cfe
Content-Type: text/plain; charset="UTF-8"

Hi Jeff,

If you want to run code that relies on the multi-usrp API (pretty much any
example or utility that doesn't start with rfnoc_...), you will need to
include 1x or 2x DDC and DUC RFNoC blocks in your FPGA image. The safe bet
is to just include 2x of each.

Jonathon

On Thu, Oct 15, 2020 at 1:35 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi, I've built my own RFNoC block and everything works fine, except the
> tx_dc_offset is -40 dBc at all times, which seems pretty high.  I tried to
> follow the example from another user, since I have the same setup with my
> UBX in the second slot (B) but I get the error:
>
>
> >> uhd_cal_tx_dc_offset  --args="addr=192.168.10.2" --subdev "B:0"
> Error: RuntimeError: For legacy APIs, all devices require the same number
> of radios, DDCs and DUCs.
>
> I am using UHD 3.15-LTS with gr-ettus.
>
> In addition, I see the gr-ettus code appears to be commented out from
> gr-ettus/lib/rfnoc_radio_impl.cc  lines 144-158:
>
>     // FIXME everything down from here needs to be mapped on to the block
> API
>     void rfnoc_radio_impl::set_tx_dc_offset(bool enable, const size_t chan)
>     {
>       //get_device()->set_tx_dc_offset(enable, chan);
>     }
>
>     void rfnoc_radio_impl::set_tx_dc_offset(const std::complex< double >
> &offset, const size_t chan)
>     {
>       //get_device()->set_tx_dc_offset(offset, chan);
>     }
>
>
> Any advice on how to reduce the dc_offset?
>
> Thanks,
>
> Jeff
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002c40bb05b1c13cfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><div>If you want to run code that r=
elies on the multi-usrp API (pretty much any example or utility that doesn&=
#39;t start with rfnoc_...), you will need to include 1x or 2x DDC and DUC =
RFNoC blocks in your FPGA image. The safe bet is to just include=C2=A02x of=
 each.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 15, 2020 at 1:35 =
PM Hodges, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_5877106888302841852divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p>Hi, I&#39;ve built my own RFNoC block and everything works fine, except =
the tx_dc_offset is -40 dBc at all times, which seems pretty high.=C2=A0 I =
tried to follow the example from another user, since I have the same setup =
with my UBX in the second slot (B) but I
 get the error:</p>
<p><br>
</p>
<div>&gt;&gt; uhd_cal_tx_dc_offset=C2=A0 --args=3D&quot;addr=3D192.168.10.2=
&quot; --subdev &quot;B:0&quot; <br>
</div>
<div><span>Error: RuntimeError: For legacy APIs, all devices require the sa=
me number of radios, DDCs and DUCs.<br>
</span></div>
<div><br>
</div>
<div>I am using UHD 3.15-LTS with gr-ettus.</div>
<div><br>
</div>
<div>In addition, I see the gr-ettus code appears to be commented out from =
gr-ettus/lib/rfnoc_radio_impl.cc=C2=A0 lines 144-158:</div>
<div><br>
</div>
<div>
<div>=C2=A0=C2=A0=C2=A0 // FIXME everything down from here needs to be mapp=
ed on to the block API<br>
=C2=A0=C2=A0=C2=A0 void rfnoc_radio_impl::set_tx_dc_offset(bool enable, con=
st size_t chan)<br>
=C2=A0=C2=A0=C2=A0 {<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 //get_device()-&gt;set_tx_dc_offset(enable, =
chan);<br>
=C2=A0=C2=A0=C2=A0 }<br>
<br>
=C2=A0=C2=A0=C2=A0 void rfnoc_radio_impl::set_tx_dc_offset(const std::compl=
ex&lt; double &gt; &amp;offset, const size_t chan)<br>
=C2=A0=C2=A0=C2=A0 {<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 //get_device()-&gt;set_tx_dc_offset(offset, =
chan);<br>
=C2=A0=C2=A0=C2=A0 }<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Any advice on how to reduce the dc_offset?</div>
<div><br>
</div>
<div>Thanks,<br>
</div>
<div><br>
</div>
<div>Jeff<br>
</div>
<br>
<span></span></div>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000002c40bb05b1c13cfe--


--===============3673701072794182312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3673701072794182312==--

