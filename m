Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F33D20B493
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 17:32:35 +0200 (CEST)
Received: from [::1] (port=57840 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1joqLA-000624-84; Fri, 26 Jun 2020 11:32:32 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:35203)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1joqL5-0005xq-Nb
 for USRP-users@lists.ettus.com; Fri, 26 Jun 2020 11:32:27 -0400
Received: by mail-qk1-f178.google.com with SMTP id q198so9136754qka.2
 for <USRP-users@lists.ettus.com>; Fri, 26 Jun 2020 08:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=iBOiaUaKt2HYeGfZ10QcL3ugFehIYJ1ZHu/xQjXVJ9o=;
 b=d8ubqZUm0JpjpDxJybIjHoSxlJL0w0u/k5Esm+05tK+QhjjkB6CTnDUJ2HAYER9U3Q
 kZCo6PWdhSbJApxz8jVQ2WMx4V/dTDKMYm7HFpQ7HAhgx2FmjNLI6kjRSzzlXK9YicFa
 HrZ9aNVT5NGoGogt2ESXJkkofyhYgaM+7Sx9HLmIw4fDYhaGRijL/Gs+1536HC80oYFj
 zuL/e4T/XVVSqeUDxh6BU6zqkAY9/pDc0g3g1cZXM98awlzoFC6DQ6pdPLLZYwAA11Lo
 HRIYRtLxpBAUWoOA89sTMfDEgbn2+Few5vBAhnpYiuUNw8tNiIiRXumJoiNKEBSe7kBN
 kDAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=iBOiaUaKt2HYeGfZ10QcL3ugFehIYJ1ZHu/xQjXVJ9o=;
 b=QMRF+JfW1m7sC540Wagz4yqtsFdO0xORlqvxzIhKXWFy4Qf0wvoz8LfyZAEoPXdDO5
 gWZryZ9DigLV+u8B8pHRzvYdUoZKJFH1GdEphwrM/rUHD/5zyeEidnR2teo3M7YagELz
 dZiyiYbo9do3r2q+hqofVnlXpW6xEzYs60pPp5BOqnbkcidDkY45HgWPdZaJ3G4h1rpz
 6SX6Ni3jGaAJWJgRmxWc/GvavNVoOJeYNxYzWxlsWqttd21pmA+gI2LJfGOqsLgnYOkU
 L4hTj3iaXZaFfd0YkWWJ69Tw9SRjepNG7S1gv6QN17hksai/ZfFFGYchFzlcYJS1hKCb
 3QzQ==
X-Gm-Message-State: AOAM530P2sRb9sqYtdufDLm7jcCh2jyms2FhLjvZQs1cJQbqze26tn78
 3RoIg5AoZAU/5MDnQRFwMaY=
X-Google-Smtp-Source: ABdhPJw78gdx1AK185MJlJBDKhYi2zHXQKGyBJTcwO9d6BxFsdBxxvcHsl6ZaMs74QZqeQ2GyW/Alg==
X-Received: by 2002:a37:d0d:: with SMTP id 13mr3495693qkn.234.1593185507172;
 Fri, 26 Jun 2020 08:31:47 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id w4sm9610919qtc.5.2020.06.26.08.31.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Jun 2020 08:31:46 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Fri, 26 Jun 2020 11:31:45 -0400
Message-Id: <0CECBCD2-07BB-40C4-A244-FB2C27C0F333@gmail.com>
References: <CACjmV_mQ6BFgZjgtNkoPsEu2UH3LqH+co_EQsaZTi1CMfA0rzQ@mail.gmail.com>
Cc: USRP-users@lists.ettus.com, rkossler@nd.edu
In-Reply-To: <CACjmV_mQ6BFgZjgtNkoPsEu2UH3LqH+co_EQsaZTi1CMfA0rzQ@mail.gmail.com>
To: Damon qiu <qiu.guowang007@gmail.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] TX Burst at 200Msps sample rate on two channel
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============0450706408354956216=="
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


--===============0450706408354956216==
Content-Type: multipart/alternative; boundary=Apple-Mail-06A294C6-ABDF-4EF5-AD51-46FC51B38664
Content-Transfer-Encoding: 7bit


--Apple-Mail-06A294C6-ABDF-4EF5-AD51-46FC51B38664
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Damon:

Yes I hadn=E2=80=99t realized that sudo was needed for DPDK since I don=E2=80=
=99t use it routinely myself.=20

This is still an outstanding issue with DPDK apparently.=20

Sent from my iPhone

> On Jun 26, 2020, at 7:51 AM, Damon qiu <qiu.guowang007@gmail.com> wrote:
>=20
> =EF=BB=BF
> Hi Marcus,
> Since you forgot to copy the email to me, I have to reply your email here.=

> 'sudo' is for using dpdk. Do you have any way to use dpdk without super au=
thority?
>=20
> Hi Rob,
> Your information is very helpful. I will try that next week when I am back=
 to the office. Thanks.
>=20
> Best regards,
> Damon
>=20
>> On Thu, 25 Jun 2020 at 01:46, guowang qiu <qiu.guowang007@gmail.com> wrot=
e:
>> Hi all,
>>=20
>> I am trying to set my USRP X310 to send out signals in burst mode at 200M=
sps sample rate on two channels. My target is sending out bursts of 100ms wi=
thout underflow.
>> The OS is Ubuntu 18.04, UHD version v3.15.0.0, DPDK is used in the test. T=
he CPU is set to 4.2GHz.
>> The X310 is connected to the host by dual 10 Gigabit Ethernet.=20
>>=20
>> sudo /usr/local/lib/uhd/examples/tx_bursts --args=3D"type=3Dx300,use_dpdk=
=3D1,addr=3D192.168.30.2,second_addr=3D192.168.40.2,send_frame_size=3D8000,n=
um_send_frames=3D512" --repeat --dilv --nsamps=3D20000000 --channels=3D0,1 -=
-rate=3D200e6
>>=20
>> If nsamps is set to 100000, there is no U printed. But if nsamps is large=
 than 120000, the terminal prints a lot of U.
>> Question 1: the depth of DMA FIFO is 32MB by default, I guess there shoul=
d be 8M samples stored in the DMA FIFO, why it seems that it just store 100K=
 samples?
>> Question 2: is there anything I could do to achieve my goal?
>>=20
>> Best regards,
>> Damon
>>=20

--Apple-Mail-06A294C6-ABDF-4EF5-AD51-46FC51B38664
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Damon:<div><br></div><div>Yes I hadn=E2=80=99=
t realized that sudo was needed for DPDK since I don=E2=80=99t use it routin=
ely myself.&nbsp;</div><div><br></div><div>This is still an outstanding issu=
e with DPDK apparently.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</d=
iv><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 26, 2020, at 7:51 A=
M, Damon qiu &lt;qiu.guowang007@gmail.com&gt; wrote:<br><br></blockquote></d=
iv><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div=
>Hi Marcus,</div><div>Since you forgot to copy the email to me, I have to re=
ply your email here.</div><div>'sudo' is for using dpdk. Do you have any way=
 to use dpdk without super authority?</div><div><br></div><div>Hi Rob,</div>=
<div>Your information is very helpful. I will try that next week when I am b=
ack to the office. Thanks.</div><div><br></div><div>Best regards,</div><div>=
Damon<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, 25 Jun 2020 at 01:46, guowang qiu &lt;<a href=3D"mailto=
:qiu.guowang007@gmail.com">qiu.guowang007@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<br=
><br>I am trying to set my USRP X310 to send out signals in burst mode at 20=
0Msps sample rate on two channels. My target is sending out bursts of 100ms w=
ithout underflow.<br>The OS is Ubuntu 18.04, UHD version v3.15.0.0, DPDK is u=
sed in the test. The CPU is set to 4.2GHz.<br>The X310 is connected to the h=
ost by dual 10 Gigabit Ethernet. <br><br>sudo /usr/local/lib/uhd/examples/tx=
_bursts --args=3D"type=3Dx300,use_dpdk=3D1,addr=3D192.168.30.2,second_addr=3D=
192.168.40.2,send_frame_size=3D8000,num_send_frames=3D512" --repeat --dilv -=
-nsamps=3D20000000 --channels=3D0,1 --rate=3D200e6<br><br>If&nbsp;nsamps is s=
et to 100000, there is no U printed. But if&nbsp;nsamps is large than 120000=
, the terminal prints a lot of U.<br>Question 1: the depth of DMA FIFO is 32=
MB by default, I guess there should be 8M samples stored in the DMA FIFO, wh=
y it seems that it just store 100K samples?<br>Question 2: is there anything=
 I could do to achieve my goal?<br><br>Best regards,<br>Damon<br><div><br></=
div></div>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-06A294C6-ABDF-4EF5-AD51-46FC51B38664--


--===============0450706408354956216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0450706408354956216==--

