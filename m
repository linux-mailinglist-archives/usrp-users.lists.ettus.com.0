Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64768241987
	for <lists+usrp-users@lfdr.de>; Tue, 11 Aug 2020 12:18:17 +0200 (CEST)
Received: from [::1] (port=46942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5RMC-0008Np-Tk; Tue, 11 Aug 2020 06:18:12 -0400
Received: from mail-ed1-f51.google.com ([209.85.208.51]:41321)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <danielozer22@gmail.com>)
 id 1k5RM9-0008II-GY
 for usrp-users@lists.ettus.com; Tue, 11 Aug 2020 06:18:09 -0400
Received: by mail-ed1-f51.google.com with SMTP id w17so1577406edt.8
 for <usrp-users@lists.ettus.com>; Tue, 11 Aug 2020 03:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=JJV8Z0zwi8levzihHjptv1JcpuMCzBF8aekphm7Tlws=;
 b=sjjs9KuGDZiihkN/WGxLffO8wIXKFaGBxPD2cuQblVXuIH0dQmCX1ogpeUpDtpRa96
 ZBj1EP2+4ukPXxfq9FXQ8ad8EQrRL2+Qv60EnPZWyKX2nmanzlJCf6TGH9nxBVvlXZX7
 NfFc6ZnFcLpkr48AizEjaXFhs8E2LYZsQbE4wCGNEgB0nHli5MbXQecH2mldN/S4JawS
 7Bi/wrJGkcpN/RGintJHRIVvUS4rA//hj/5v4+EfsCaHfSTbOMZArRLGg+g2hEirclj0
 LLaBhK+YOjgG0+hjsoExni1iker3Wn+BYVVgcK/bzk17xwhtoFTealS700NJcPxisKTN
 3Ngg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=JJV8Z0zwi8levzihHjptv1JcpuMCzBF8aekphm7Tlws=;
 b=qvb9O/ErlGfdq3fvsgDEB8hS9Dm+FZSFpKc02cibeqbZZoUVqBh5xEdHYYVD4rTow+
 sMUCV40+FWVdQhsk1nyDVU8j07JfUKWsW6MrPOH/OiH7Fqcz6DwiIEOaMbH7FNOUrpwr
 dcbk65tFhaKy6XEB4Vm51WxzZ32PtX6hBuTjCYpMR1QTUsTFS1ZcBkaABf7zdazVTBpZ
 O5KhXP68FpF8IilkzlE5+HN4H2x4m2keoATBMrDXAO9XnhQXAzWbqraEs79mQlPO+ISd
 B6w6XbhkvdG1F7DZsETNkTHoAOVwfStptNJR6NVxD8JOEYpUcO9MN22DaAOb8BNlUHKd
 IUog==
X-Gm-Message-State: AOAM533vEq62SMXfz8xTw5W3KNCefFzvSGzDROxJAur5xnerskCq/2h/
 iN8tE/eX20yL2KfV5KFanPkSv1xjgk90W3ylfWr5q2l4
X-Google-Smtp-Source: ABdhPJycwTvxewilRon3xUgAA61KpKSXDPAo6Ylu3TxZ4h/Ave7vbRPdKkz6CpmDbDqDMenGQOUoDp2iFSIgVq2k2Rk=
X-Received: by 2002:a05:6402:1ad1:: with SMTP id
 ba17mr24642337edb.119.1597141048162; 
 Tue, 11 Aug 2020 03:17:28 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 11 Aug 2020 13:17:12 +0300
Message-ID: <CAE_Rk55Bde-UiKK93hR-RGU5VpJGS7eoBB_2pe-bMw_Evd=1KQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] =?utf-8?b?cmZub2MgcXVlc3Rpb25zOuKAj+KAjw==?=
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
From: Daniel Ozer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Ozer <danielozer22@gmail.com>
Content-Type: multipart/mixed; boundary="===============4094662173527281689=="
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

--===============4094662173527281689==
Content-Type: multipart/alternative; boundary="000000000000d4fcbb05ac9760be"

--000000000000d4fcbb05ac9760be
Content-Type: text/plain; charset="UTF-8"

Hi everyone,
Im just started  developing on the usrp X310 platform and i have some
questions :

1. Is the crossbar is capable to transfer data between 2 rfnoc blocks at
maximum rate of the crossbar clock ?(bus_clk=187.5MHZ)

2. if i have this theoretical chain : rfnoc: block1 ->  rfnoc: block2 ->
rfnoc: block3 ->  rfnoc: block4
 Is every block can send data to the next block at the maximum rate of the
crossbar clk ?

3. I have a chain :  rfnoc: signal source -> rfnoc: DUC (1M to 200M) ->
rfnoc:radio_block.
how is it possible that the connection between the duc and the radio block
doesn't throw an error because the transfer rate is bigger than the clk
speed of the crossbar ?

4. Is it possible to change the crossbar clk to ce_clk=214MHZ instead of
bus clk ?

5. I saw in the article (" Measured Latency Introduced by RFNoC
Architecture" )that the nocshell and the axi wrapper have a big latency
(100nanosec and 1.7microsec) . There is a way to drop down the latency ?

thanks in advanced

--000000000000d4fcbb05ac9760be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div id=3D"gmail-m_5740917156441633232gmail-:17g" style=3D=
"font-size:0.875rem;direction:rtl;margin:8px 0px 0px;padding:0px"><div id=
=3D"gmail-m_5740917156441633232gmail-:17f" style=3D"overflow:hidden;font-va=
riant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;fon=
t-size:small;line-height:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><div dir=3D=
"ltr">Hi everyone,</div><div dir=3D"ltr">Im just started=C2=A0=C2=A0develop=
ing=C2=A0on the usrp X310 platform=C2=A0and i have some questions :<br><br>=
</div><div dir=3D"ltr">1. Is the crossbar is capable to transfer data betwe=
en 2 rfnoc blocks=C2=A0at maximum rate of the crossbar clock ?(bus_clk=3D18=
7.5MHZ)=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">2. if i have=
 this theoretical chain : rfnoc: block1 -&gt;=C2=A0 rfnoc: block2 -&gt;=C2=
=A0 rfnoc: block3 -&gt;=C2=A0 rfnoc: block4</div><div dir=3D"ltr">=C2=A0Is =
every block can send data to the next block at the maximum rate of the cros=
sbar clk ?</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">3. I have a cha=
in :=C2=A0 rfnoc: signal source=C2=A0-&gt; rfnoc: DUC (1M to 200M) -&gt; rf=
noc:radio_block.</div><div dir=3D"ltr">how is it possible that the connecti=
on between the duc and the radio block doesn&#39;t=C2=A0throw an error beca=
use the transfer rate is bigger than the clk speed of the crossbar ?<br><br=
></div><div dir=3D"ltr">4. Is it possible to change=C2=A0the crossbar clk t=
o ce_clk=3D214MHZ instead=C2=A0of bus clk ?</div><div dir=3D"ltr"><br></div=
><div dir=3D"ltr">5. I saw in the article (&quot; Measured Latency Introduc=
ed by
RFNoC Architecture&quot; )that the nocshell=C2=A0and the axi wrapper have a=
 big latency (100nanosec and 1.7microsec) . There is a way to drop down the=
 latency ?</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">thanks in advan=
ced</div></div></div></div></div></div>

--000000000000d4fcbb05ac9760be--


--===============4094662173527281689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4094662173527281689==--

