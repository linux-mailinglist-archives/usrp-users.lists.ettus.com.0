Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B75274520
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 17:19:56 +0200 (CEST)
Received: from [::1] (port=56534 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKk5A-0002aA-3E; Tue, 22 Sep 2020 11:19:52 -0400
Received: from mail-io1-f52.google.com ([209.85.166.52]:38312)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1kKk56-0002Vt-Tq
 for usrp-users@lists.ettus.com; Tue, 22 Sep 2020 11:19:48 -0400
Received: by mail-io1-f52.google.com with SMTP id q4so10624026iop.5
 for <usrp-users@lists.ettus.com>; Tue, 22 Sep 2020 08:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cLEpvovPU7F/d2Yaa+eSePZiQ26jqfScTB0+nhL8SbM=;
 b=TKZWLL8qxbUBXe2QoUp7KzGWD7dTcVaOu6HGxHq+GBOmfVfbcrOJZddFmNglN49jov
 nPuEmFhKX2aNO1pCrD9CJioNePUR6eVnTC/6u/GxQD8L3ibAN3m4qgVDl3oH4CVA6j8F
 4cLAgXSdikWI8zzPV0hwvu6dP3ZjbaAHdOSW9VgS/YYX6ZtzXkMZpVgtVuJpaWsazBlA
 cARQiRyImsiyEjR3jnMoR9HhXxS0M0sV/B59yytLQsnYSqdu5ynIl4omIO2zYLkbpYse
 O/Ec0+NDZhlGjTqfBeD6v53QOThmz9QLrF3CZBwkoI9smOrSJ/Hs71x1TFyFbNuglvqg
 2Uqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cLEpvovPU7F/d2Yaa+eSePZiQ26jqfScTB0+nhL8SbM=;
 b=F3YpDx8Laq5xHXQRaH0VV+v5RV3DSyjojg2dYs3Y8kst/khBM7il8D1lLmK0XqXBt/
 hA8/w5GCcDMTX1PhzIeTa7I0oIGanmIdR9J3SD4b0vCrC5nxMwvpG3Ok0hEjLeX/1klF
 v4PAgcTnfgPC4HG9yaclltzvIWxseDixUQXKi7EFoiZTN/Ca2p4x6Y+eFH8295Ddlpex
 tTN8eI2tvEjR0uUCgPs8lW2T+XUc7hC6rvwj8n3T3dxC3ryIAlMh+DSj1BcYHJZpJ4DY
 er5URKD/rqGcj8/qoMNxKApYbyqUowdJR3swHT5zJco215wDVES25pJddoDG8OCag4R+
 /BJg==
X-Gm-Message-State: AOAM532kf78IctdQ/TEOsa9klnQZifhD5pUjztoorEFumhhC1rnkDBGL
 Rl8LN3M/3d37xqy1OYpimCfEBRLz3uF2EH/t3k4O1JxL
X-Google-Smtp-Source: ABdhPJxuch29DcXuFwLb+i5beLhNb4r/Q+f409KsZKbFm+WxACIw/mGGffZ6PksPh8A6jYRX45at/pT0WOxVYOoGXuQ=
X-Received: by 2002:a05:6638:224e:: with SMTP id
 m14mr4504128jas.101.1600787948264; 
 Tue, 22 Sep 2020 08:19:08 -0700 (PDT)
MIME-Version: 1.0
References: <VI1P195MB0285728BBD364C5BCFB1C5E8D33B0@VI1P195MB0285.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <VI1P195MB0285728BBD364C5BCFB1C5E8D33B0@VI1P195MB0285.EURP195.PROD.OUTLOOK.COM>
Date: Tue, 22 Sep 2020 10:18:31 -0500
Message-ID: <CACaXmv_3KbE=gPhs6XHqGBvGMk=X_oFm2ZZPTHNZ0_2tVBX5ng@mail.gmail.com>
To: Dimitris Pliatsios <pliago@hotmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Decision between N320 or N321
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============7148418173365619903=="
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

--===============7148418173365619903==
Content-Type: multipart/alternative; boundary="00000000000004833f05afe87ddc"

--00000000000004833f05afe87ddc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Dimitris:

The KB has information about the USRP N320/N321 and the LOs.

https://kb.ettus.com/N320/N321

https://kb.ettus.com/USRP_N320/N321_LO_Distribution

The LOs cannot be imported or exported on the USRP B200/B210.

https://kb.ettus.com/B200/B210/B200mini/B205mini

The LO ports on the USRP N320/N321 are not transmit and receive ports.  The
N320/N321 and B210 all have two transmit channels and two receive channels.

Please let me know if you have any further questions.

--Neel Pandeya



On Tue, 22 Sep 2020 at 07:51, Dimitris Pliatsios via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello all,
>
> I am looking to purchase 2 USRPs for research purposes (5G, beamforming,
> =CE=9C=CE=99=CE=9C=CE=9F, etc.) and I am between the N321 and N320 model.=
 The main
> difference is the LO ports.
>
> As my previous experience with USRPs was a B210 model, I don't know
> whether the LO ports are needed or not.
>
> 1) Can these ports be used as the other RX/TX RF ports, in order to
> connect more antennas (e.g., MIMO)?
>
> 2) Can you please provide me examples of LO usage or any relevant
> wiki/tutorial/guide?
>
> Thank you very much.
>
> Best regards,
> Dimitris
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000004833f05afe87ddc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Dimitris:</div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif">The KB has information about the USRP N320=
/N321 and the LOs.</div><div class=3D"gmail_default" style=3D"font-family:v=
erdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fam=
ily:verdana,sans-serif"><a href=3D"https://kb.ettus.com/N320/N321">https://=
kb.ettus.com/N320/N321</a></div><div class=3D"gmail_default" style=3D"font-=
family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"=
font-family:verdana,sans-serif"><a href=3D"https://kb.ettus.com/USRP_N320/N=
321_LO_Distribution">https://kb.ettus.com/USRP_N320/N321_LO_Distribution</a=
></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif=
"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-=
serif">The LOs cannot be imported or exported on the USRP B200/B210.<br></d=
iv><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><b=
r></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><a href=3D"https://kb.ettus.com/B200/B210/B200mini/B205mini">https://kb.=
ettus.com/B200/B210/B200mini/B205mini</a></div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif">The LO ports on the USRP N32=
0/N321 are not transmit and receive ports.=C2=A0 The N320/N321 and B210 all=
 have two transmit channels and two receive channels.</div><div class=3D"gm=
ail_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Please let me k=
now if you have any further questions.</div><div class=3D"gmail_default" st=
yle=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:verdana,sans-serif">--Neel Pandeya</div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, 22 Sep 2020 at 07:51, Dimitris Pliatsios via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello all,=
<br>
<br>
I am looking to purchase 2 USRPs for research purposes (5G, beamforming, <b=
r>
=CE=9C=CE=99=CE=9C=CE=9F, etc.) and I am between the N321 and N320 model. T=
he main <br>
difference is the LO ports.<br>
<br>
As my previous experience with USRPs was a B210 model, I don&#39;t know <br=
>
whether the LO ports are needed or not.<br>
<br>
1) Can these ports be used as the other RX/TX RF ports, in order to <br>
connect more antennas (e.g., MIMO)?<br>
<br>
2) Can you please provide me examples of LO usage or any relevant <br>
wiki/tutorial/guide?<br>
<br>
Thank you very much.<br>
<br>
Best regards,<br>
Dimitris<br>
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

--00000000000004833f05afe87ddc--


--===============7148418173365619903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7148418173365619903==--

