Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 876A83AEA93
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 15:55:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 52CD1383E09
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 09:55:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MdVpAnqx";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id BC548383D41
	for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 09:54:48 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id w21so16828196qkb.9
        for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 06:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:message-id:date
         :to;
        bh=ItCBy4RzrbRExYkdMce8209hckFNZy5Uh4cEL2W2s2s=;
        b=MdVpAnqxyq81UlE8rIhUE34zHpKXepoldzbRp+dw/p7jhVySpxfqYbvCjiYyyrWXFe
         yxYa/At1lXSjH7zr1+0/vw3tRwMqZhu7x3AL5dyQlrgYIozaXRG6c0U7VGLhuepmDEHM
         6l/S5tq/rVPmmZHr+jzUHskN2UMCpnFdUaN2EacELEdmClge1AXhzLd3rfsYZzbIKJNl
         gM737G0qXTYnkuzI2LdPx1e6S+Nksqvt3+YleX0aJP4uDJA0xLBL1bXv3DgBmJLZr7B5
         aYy/7uZJL0Mu4tXrAF/8TJQPmcQ1qCA9IvrUQX/DtUW99H1GtcZkVsAjvwMqhxxETgaF
         qSUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:message-id:date:to;
        bh=ItCBy4RzrbRExYkdMce8209hckFNZy5Uh4cEL2W2s2s=;
        b=GZPWpdYQPbwvqcZ+rnVgdbsdiRlE576Q2UhYPpKgBY5zn/SSxD7ZHt/qrEdDbDxH5r
         b5IpQVmSWQ93H3V1adtxOuJPEKpXAqRmI/Lzi5kAV2JPO0pqUDuOwdAgesDHxhAmjnX8
         IR1nGr0xhHEjcgNiNIJXfY0OMs8XCoFVSGCyh4UU3TWvIySKkC1iPR71x4ndGTTipUf4
         krdw4I/4HmIho6oYNy+Lo+PXcMOCVH0nwt/nUzdZuuSX0sWs2xu/VA3JlXQUMp7hWv/N
         nAD1DdR3QqWTKu6NyH7F2XKCXYuiCBHaLA07H1Zrik1wQHcSeilXcVtkmHtNGi9gYg42
         LAyw==
X-Gm-Message-State: AOAM531Wt73tsWWbhh+z904LTvG6qAcgDNa/Ssjs6qaFqy1ynczV4+KV
	gMJcIcvpYYxD9N9x7zq7NrnUUkwo6cI=
X-Google-Smtp-Source: ABdhPJzFu5MkY8aK7Jhx2ZbNAnLKAclrQHk72bzaXPZ70SrsYs3PFjLMPxfBHqkFFKp/utpR8t0+xA==
X-Received: by 2002:a05:620a:e14:: with SMTP id y20mr23404075qkm.335.1624283687864;
        Mon, 21 Jun 2021 06:54:47 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:9271:2bd4:c064:4084:3e59:126a])
        by smtp.gmail.com with ESMTPSA id m126sm10054979qke.16.2021.06.21.06.54.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 06:54:47 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <6F56DD7C-9C80-41E0-9634-552A6BE12526@gmail.com>
Date: Mon, 21 Jun 2021 09:54:46 -0400
To: Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: GIGUO6OA35BTPC3OAKX3R5U7KOIXWEHU
X-Message-ID-Hash: GIGUO6OA35BTPC3OAKX3R5U7KOIXWEHU
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] AURORA (partial) success
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GIGUO6OA35BTPC3OAKX3R5U7KOIXWEHU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6985737615321610708=="


--===============6985737615321610708==
Content-Type: multipart/alternative; boundary=Apple-Mail-E06C4810-4043-4922-8A5C-4A4FE047CD53
Content-Transfer-Encoding: 7bit


--Apple-Mail-E06C4810-4043-4922-8A5C-4A4FE047CD53
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I was able to re-create the Aurora demo shown at GRCON2019 But it still fail=
s to initialize about 50% of the time which I haven=E2=80=99t been able to f=
igure out yet. Any help there is welcome.=20

Here=E2=80=99s what I did:
I applied the loopback patch found here:

http://ettus.80997.x6.nabble.com/USRP-users-Software-Loopback-RFNoC-TX-RX-sa=
me-flowgraph-td16633.html#a16634

Connected the SFP1 ports of two X310=E2=80=99s with an SFP+ Cable, then conn=
ected regular Ethernet from a PC to each of the radios SFP0 ports for contro=
l.=20

I started with the loopback example flowgraph accept I changed the following=
:
1) In the graph block under device address, addr0=3D<first radio=E2=80=99s S=
FP0 address>,addr1=3D<second radio=E2=80=99s SFP0 address>
e.g addr0=3D192.168.10.2,addr1=3D192.168.110.3
2) set =E2=80=98device=E2=80=99 parameter on the DDC and RX Radio set to =E2=
=80=981=E2=80=99=20
3) set device parameter on DUC and TX Radio were set to =E2=80=980=E2=80=99.=
=20
4) skip propagation set to =E2=80=98yes=E2=80=99 and Python snippets left th=
e same.=20

I still have to run the flowgraph several times to get it to work, seems as t=
hough there=E2=80=99s a possible race condition? There=E2=80=99s an RFNOC ti=
meout when it doesn=E2=80=99t work.
Despite that, I=E2=80=99ve confirmed on an R&S spectrum analyzer that when t=
he flowgraph runs successfully it passes 160MHz of bandwidth (UBX160 daughte=
rboard) as an RF Relay.=20

Hope this helps someone.=20


<end transmission>=

--Apple-Mail-E06C4810-4043-4922-8A5C-4A4FE047CD53
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><meta http-equiv=3D"conten=
t-type" content=3D"text/html; charset=3Dutf-8">I was able to re-create the A=
urora demo shown at GRCON2019 But it still fails to initialize about 50% of t=
he time which I haven=E2=80=99t been able to figure out yet. Any help there i=
s welcome.&nbsp;<br><br>Here=E2=80=99s what I did:<div><div style=3D"-webkit=
-text-size-adjust: auto;">I applied the loopback patch found here:</div><div=
 style=3D"-webkit-text-size-adjust: auto;"><p style=3D"margin: 0px; font-str=
etch: normal; font-size: 12px; line-height: normal; font-family: Helvetica;"=
><br></p><p style=3D"margin: 0px; font-stretch: normal; font-size: 12px; lin=
e-height: normal; font-family: Helvetica;"><a href=3D"http://ettus.80997.x6.=
nabble.com/USRP-users-Software-Loopback-RFNoC-TX-RX-same-flowgraph-td16633.h=
tml#a16634">http://ettus.80997.x6.nabble.com/USRP-users-Software-Loopback-RFN=
oC-TX-RX-same-flowgraph-td16633.html#a16634</a></p></div><div style=3D"-webk=
it-text-size-adjust: auto;"><br></div><div style=3D"-webkit-text-size-adjust=
: auto;">Connected the SFP1 ports of two X310=E2=80=99s with an SFP+ Cable, t=
hen connected regular Ethernet from a PC to each of the radios SFP0 ports fo=
r control.&nbsp;</div><div style=3D"-webkit-text-size-adjust: auto;"><br></d=
iv><div style=3D"-webkit-text-size-adjust: auto;">I started with the loopbac=
k example flowgraph accept I changed the following:</div><div style=3D"-webk=
it-text-size-adjust: auto;">1) In the graph block under device address, addr=
0=3D&lt;first radio=E2=80=99s SFP0 address&gt;,addr1=3D&lt;second<span style=
=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">&nbsp;radio=E2=80=99s S=
FP0 address&gt;</span></div><div style=3D"-webkit-text-size-adjust: auto;"><=
font color=3D"#000000">e.g addr0=3D192.168.10.2,addr1=3D192.168.110.3</font>=
</div><div style=3D"-webkit-text-size-adjust: auto;">2) set =E2=80=98device=E2=
=80=99 parameter on the DDC and RX Radio set to =E2=80=981=E2=80=99&nbsp;</d=
iv><div style=3D"-webkit-text-size-adjust: auto;">3) set device parameter on=
 DUC and TX Radio were set to =E2=80=980=E2=80=99.&nbsp;</div><div style=3D"=
-webkit-text-size-adjust: auto;">4) skip propagation set to =E2=80=98yes=E2=80=
=99 and Python snippets left the same.&nbsp;</div><div style=3D"-webkit-text=
-size-adjust: auto;"><br></div><div style=3D"-webkit-text-size-adjust: auto;=
">I still have to run the flowgraph several times to get it to work, seems a=
s though there=E2=80=99s a possible race condition? There=E2=80=99s an RFNOC=
 timeout when it doesn=E2=80=99t work.</div><div style=3D"-webkit-text-size-=
adjust: auto;">Despite that, I=E2=80=99ve confirmed on an R&amp;S spectrum a=
nalyzer that when the flowgraph runs successfully it passes 160MHz of bandwi=
dth (UBX160 daughterboard) as an RF Relay.&nbsp;</div><div><br></div>Hope th=
is helps someone.&nbsp;</div><div><br></div><div><br><div dir=3D"ltr">&lt;<s=
pan class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-color: rgba(26=
, 26, 26, 0.298);">end transmission&gt;</span></div></div></div></body></htm=
l>=

--Apple-Mail-E06C4810-4043-4922-8A5C-4A4FE047CD53--

--===============6985737615321610708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6985737615321610708==--
