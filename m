Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3401D52FED1
	for <lists+usrp-users@lfdr.de>; Sat, 21 May 2022 20:35:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE5E9384C4D
	for <lists+usrp-users@lfdr.de>; Sat, 21 May 2022 14:35:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653158106; bh=Ye07xUTXcTR5n+SbvNY1z5fuRf37gQ/DCtyj5kWAzxQ=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=vYqfhOqKYBY9DQvaBjv85QUoAvKmq6UWPpDR0sTzgrMIWWsVYaa+Vt0RpG3w5dQuu
	 RrUINFf2fqfooSD/ceC0xgWg2QWrpkqTC2xmr2yU4QM+1EQHpruwx/wjVb3Bh1O4Xc
	 zJVJ0bX2hY7dD8X82/V7lQhxrrMub39zhLu7OgeSXebJR4hxx6W6N41AfnWD87si2k
	 rowOHbhTqEa4OKxpDiwUmd3RlSUOJl1xiTNZCZAGYt+wRRmoQ8xMxFHPGO25pUvp7z
	 HYAYcIv+iVyP2qK3OHM1ggexhP6ypxLKTN3j+HpHxHx/e/EcROAKCY4HKIe/6xN8+u
	 aE0UrcFD+2Hzg==
Received: from mx0b-0016e101.pphosted.com (mx0b-0016e101.pphosted.com [148.163.141.31])
	by mm2.emwd.com (Postfix) with ESMTPS id E71BA3845EF
	for <usrp-users@lists.ettus.com>; Sat, 21 May 2022 14:34:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ucsd.edu header.i=@ucsd.edu header.b="BrnqvmRj";
	dkim=pass (1024-bit key; unprotected) header.d=ucsd.edu header.i=@ucsd.edu header.b="La2FMyD7";
	dkim-atps=neutral
Received: from pps.filterd (m0151357.ppops.net [127.0.0.1])
	by mx0b-0016e101.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24LIK2pi003455
	for <usrp-users@lists.ettus.com>; Sat, 21 May 2022 11:34:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucsd.edu; h=mime-version :
 references : in-reply-to : from : date : message-id : subject : to : cc :
 content-type; s=campus; bh=aHQN3Lxq5e2wpBUtW1kBkyv5CFFQQK+UJbUxLQjtW7Q=;
 b=BrnqvmRjVmTgMyVTlj0RuA95K9mpcI2lmJ6Y80ryjrfx2Y8CnyYXlOLzPW1bcnvYX0lS
 sY0mqH7GJ7/76sLBTiM6dR6HvHaeg/93ifHQXbnUR+EtcfVnknqY0pqf3Ch9HIEWmtBu
 DGV4s4w7nJStzymXbE/cXqPGtlpXpu56/nAYVukHXo1O3dzErxOLIw/KZ80b+erW5FEj
 NoSMSKAQDFCJr1uR7JH3t4IMJ1/ZBO0JDl8a3Cbs3AYylCXmIllSG88IGe4LSnAox83r
 Og0Df2UGpGxOMmQhxbyhe7UrxxdHYiw2y+V/E9amMyXMcXDHTWdqQ0lhGYR9sPyoPEOX TQ==
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mx0b-0016e101.pphosted.com (PPS) with ESMTPS id 3g6xsx2ppj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <usrp-users@lists.ettus.com>; Sat, 21 May 2022 11:34:04 -0700
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-2fecc57ec14so96931247b3.11
        for <usrp-users@lists.ettus.com>; Sat, 21 May 2022 11:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ucsd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aHQN3Lxq5e2wpBUtW1kBkyv5CFFQQK+UJbUxLQjtW7Q=;
        b=La2FMyD7rft/UGj0qOobq0aGcIhm8aRVmM8HvoDGjGRKKTgZJKu1m1ugPHpn5wOy2x
         nUXnyGu6SUnJofFhq7GGF7RUbQwBUA7YUt4W4ueKbW3t42VXw2+/fjV03RSZcPXBzMQg
         3jCF3ildR+idKi6dLZOEmhy3/xzUoO0OWjy6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aHQN3Lxq5e2wpBUtW1kBkyv5CFFQQK+UJbUxLQjtW7Q=;
        b=aK2CYsTHM3lzEJzTfzfK7VV5Iqv+hXkzq/zXuT2nK61yOrSGkvZMpZaoS0RzxUoQol
         M+L8Zc3GasSK5QoK8v5TmOoyAr8ZZEPCPRG0oZQflj0cUp54600SiTOrwLMYAkFZKaQ8
         CQ0P5dpdGqgOSsj5esn1ZtjdWeqywfEZ1iZ/6SOGwwg9g0V0YMK/Z8u5LiAlJRB9M5bv
         zhxirMdNtdg/QgnNSFkB7xmwOpxp4uk8bp8iP26Fr58IUdFG1CSxijRiN/LyYR9VO0QU
         2xUkxGhRpPPrGKOPEYRUh2/6x+D7VUVb+GdbkEbvhamVst9HzowdWxbTpysHVKf1nxF2
         NoAw==
X-Gm-Message-State: AOAM533pzCfXpbbRGG1xelYKuJYSmlLiiUFSDGM8Nvhi90QuBLp+bMZR
	31ilFbPmiEi53TiYnmy1TKwv+ZFZKUjWc9WlrDsK1x1p4yIcCPYOgM2fsbXnOVDR7oqeysuFmaK
	csK/k1GejZXm3rbafZ3D0biCvPtKn0TQ8emme
X-Received: by 2002:a5b:c47:0:b0:64f:5aef:319d with SMTP id d7-20020a5b0c47000000b0064f5aef319dmr8538346ybr.276.1653158043270;
        Sat, 21 May 2022 11:34:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPgN9KttO5lG/ARr+D7swuSp6x5/vmjJS2GpqBsB4yx1AU/CNnPiRzTSyl2ivwx4sKSUNh+862QiD3jqkiBvs=
X-Received: by 2002:a5b:c47:0:b0:64f:5aef:319d with SMTP id
 d7-20020a5b0c47000000b0064f5aef319dmr8538325ybr.276.1653158042840; Sat, 21
 May 2022 11:34:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PubV7v=UPCXCJrYfApoZ=KXuhbOQRneeeJA6GZsP5A9Zw@mail.gmail.com>
In-Reply-To: <CAA=S3PubV7v=UPCXCJrYfApoZ=KXuhbOQRneeeJA6GZsP5A9Zw@mail.gmail.com>
Date: Sat, 21 May 2022 11:33:52 -0700
Message-ID: <CAHKPiO6ZTc6n0Zf9=tFfmF1b2=DG3o0vt1haeTZfV8rhyRNQzA@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
X-campus_gsuite: gsuite_33445511
X-Proofpoint-GUID: dadxxpkR43GCXWuF-UkTw-Sc-BJRKepp
X-Proofpoint-ORIG-GUID: dadxxpkR43GCXWuF-UkTw-Sc-BJRKepp
pp_allow_relay: proofpoint_allowed
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-21_06,2022-05-20_02,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 mlxlogscore=999
 malwarescore=0 priorityscore=1501 clxscore=1015 mlxscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=-80 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205210118
Message-ID-Hash: TSEZDNKWRFQD4XFEJLTDFWPZKVEZNSBL
X-Message-ID-Hash: TSEZDNKWRFQD4XFEJLTDFWPZKVEZNSBL
X-MailFrom: jcuenco@ucsd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What's means ce_clk in orginal USRP blocks? as it is not in rfnoc-example ....
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TSEZDNKWRFQD4XFEJLTDFWPZKVEZNSBL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jeffrey Cuenco via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeffrey Cuenco <jcuenco@ucsd.edu>
Content-Type: multipart/mixed; boundary="===============3594544844310931783=="

--===============3594544844310931783==
Content-Type: multipart/alternative; boundary="000000000000e6c97a05df89d9db"

--000000000000e6c97a05df89d9db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am also currently developing with UHD v4.1.0.5 and the default verilog
template code generated by *rfnoc_mod_tool *does not automatically include
ce_clk.

If you would like to use ce_clk you can use the *rfnoc_create_verilog* tool
to regenerate and customize the verilog code from the template with
parameters you specify in your block .YML file.

Example:

python3 $PATH_TO_UHD_DIR/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py
-c $PATH_TO_BLOCK_YML/yourblock.yml -d $DESIRED_PATH/rfnoc_block_yourblock

If you are more interested in as to what the various clocks are intended to
be used for, the general explanation is that certain parts of RFNoC are
designed to operate at the primary bus clock of the USRP, yet one's logic
may need to operate at a different clock, especially if it was designed to
operate at a specific frequency... so the customizability is built into
RFNoC.

The following RFNoC 4 Workshop video may help provide more of a deep-dive:
https://www.youtube.com/watch?v=3DM9ntwQie9vs

There are also a few other slide materials (some from RFNoC 3 but are still
useful). Recommend going into the RFNoC 4 Migration Guide as it discusses
the differences if you have prior experience working with RFNoC 3

Slides: Part 1: Overview of RFNoC 4 -
https://kb.ettus.com/images/5/5b/rfno...
<https://www.youtube.com/redirect?event=3Dvideo_description&redir_token=3DQ=
UFFLUhqbkZQeUJnei1iS1hkYTcyTnUwclVOOFZKMEJtZ3xBQ3Jtc0tuNnk0dlZHdjYxUXkxZzFP=
d2I1dnBmM2NobFRkbG9hckd0VU0yaGc2MzREeWhzNE10c25GVUxSaE9Rc0FGb2Q4em1waUphOWZ=
xbkZ5TGh6NHpqVjRYODRqcW5fU3ZmVzVIaWtGZ1lPUlZaaTdNTmxERQ&q=3Dhttps%3A%2F%2Fk=
b.ettus.com%2Fimages%2F5%2F5b%2Frfnoc4_workshop_slides_2020_part_1.pdf&v=3D=
M9ntwQie9vs>
Part 2: Deep dive into RFNoC 4 - https://kb.ettus.com/images/e/e9/rfno...
<https://www.youtube.com/redirect?event=3Dvideo_description&redir_token=3DQ=
UFFLUhqbmJabXRUbGJhVHNzak4wVGhNeXVXc2h4RUpkQXxBQ3Jtc0tsNlJJNGJjY0VRSWJqLTNh=
enZoWUhoODZ1cGJYNEVyTFRPNjl5UURxVmRuYmVmQTktMnlrWmJzMksxS1Y5b0xxd2lTaFdoTUh=
yYWdQM1FHMHk4bkpRQ2ZXS3R3QTI0TXJNM0hwX3h2SU5LUnJZdHM0SQ&q=3Dhttps%3A%2F%2Fk=
b.ettus.com%2Fimages%2Fe%2Fe9%2Frfnoc4_workshop_slides_2020_part_2.pdf&v=3D=
M9ntwQie9vs>
Useful Knowledge Base Application Notes: Getting Started with RFNoC in UHD
4.0 - https://kb.ettus.com/Getting_Started_...
<https://www.youtube.com/redirect?event=3Dvideo_description&redir_token=3DQ=
UFFLUhqa2d3MFBKZzJCUW5VRFd2cFlIalR6MGtCLTZmUXxBQ3Jtc0trY0pKOWNCamw5dmd2N2NM=
bFl5MHFXb2JVUEdWLVZNSWk2TkZRTy03X0FuRFo5aVdSdGtialVrLTN1T0lUSGNYTy1OaGRWOUh=
3T0NhdWV2dTF0LVljNkxlUFBvY0pqZ2RHLTkxUmIwZEdfcmczYjY3TQ&q=3Dhttps%3A%2F%2Fk=
b.ettus.com%2FGetting_Started_with_RFNoC_in_UHD_4.0&v=3DM9ntwQie9vs>
RFNoC 4 Migration Guide - https://kb.ettus.com/RFNoC_4_Migratio...
<https://www.youtube.com/redirect?event=3Dvideo_description&redir_token=3DQ=
UFFLUhqbkhKQ09JV3gyQXplRGo2X29ibXR1bXFHUENUUXxBQ3Jtc0ttZV9ma1VZU2RDNWhpNEUx=
M0FDSWxiQTZwS0V2RHpMalRkWnZ6VVAtUUZXOWk1T0REWE5WMDVwcXM5QlNFRGhLSkNGY3dlRkx=
YZ1NzTHVDSWZJTFhlUE83dG9KbzdiWUsyMXlFUmVrMXVQUTNzOUsyOA&q=3Dhttps%3A%2F%2Fk=
b.ettus.com%2FRFNoC_4_Migration_Guide&v=3DM9ntwQie9vs>
Other useful videos: Exploring RFNoC 4 with the UHD Python API -
https://youtu.be/fbcxm7f-Tj0
<https://www.youtube.com/watch?v=3Dfbcxm7f-Tj0&t=3D0s> RFNoC 3 workshop vid=
eo -
https://youtu.be/VbODcrmpLaU
<https://www.youtube.com/watch?v=3DVbODcrmpLaU&t=3D0s>

Hope this helps,
-Jeff

On Sat, May 21, 2022 at 2:33 AM sp h <stackprogramer@gmail.com> wrote:

> when I examine RFNOC block that is in the below path, I am faced with a
> wire ce_clk and ce_rst, but in rfnoc-example there is not a ce_clk.
>
> uhd-4.1.0.5/fpga/usrp3/lib/rfnoc/blocks
>
> Can anyone guide me ce clocks?  why instead using rfnoc_chdr clk,
> original blocks uses ce clock?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e6c97a05df89d9db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,<div><br></div><div>I am also curre=
ntly developing with UHD v4.1.0.5 and the default verilog template code gen=
erated by <b>rfnoc_mod_tool </b>does not automatically include ce_clk.</div=
><div><br></div><div>If you would like to use ce_clk you can use the <b>rfn=
oc_create_verilog</b>=C2=A0tool to regenerate and customize the verilog cod=
e from the template with parameters you specify in your block .YML file.</d=
iv><div><br></div><div>Example:</div><div><br></div><div>python3 $PATH_TO_U=
HD_DIR/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py -c $PATH_TO_BLOCK=
_YML/yourblock.yml -d $DESIRED_PATH/rfnoc_block_yourblock<br></div><div><br=
></div><div>If you are more interested in as to what the various clocks are=
 intended to be used for, the general explanation is that certain parts of =
RFNoC are designed to operate at the primary bus clock of the USRP, yet one=
&#39;s logic may need to operate at a different clock, especially if it was=
 designed to operate at a specific frequency... so the customizability is b=
uilt into RFNoC.</div><div><br></div><div>The following RFNoC 4 Workshop vi=
deo may help provide more of a deep-dive:</div><div><a href=3D"https://www.=
youtube.com/watch?v=3DM9ntwQie9vs">https://www.youtube.com/watch?v=3DM9ntwQ=
ie9vs</a><br></div><div><br></div><div>There are also a few other slide=C2=
=A0materials (some from RFNoC 3 but are still useful). Recommend going into=
 the RFNoC 4 Migration Guide as it discusses the differences if you have pr=
ior experience working with RFNoC 3</div><div><br></div><div><span dir=3D"a=
uto" class=3D"gmail-style-scope gmail-yt-formatted-string" style=3D"margin:=
0px;padding:0px;border:0px;background:rgb(249,249,249);color:rgb(3,3,3);fon=
t-family:Roboto,Arial,sans-serif;font-size:14px;white-space:pre-wrap">Slide=
s:
Part 1: Overview of RFNoC 4 - </span><a class=3D"gmail-yt-simple-endpoint g=
mail-style-scope gmail-yt-formatted-string" href=3D"https://www.youtube.com=
/redirect?event=3Dvideo_description&amp;redir_token=3DQUFFLUhqbkZQeUJnei1iS=
1hkYTcyTnUwclVOOFZKMEJtZ3xBQ3Jtc0tuNnk0dlZHdjYxUXkxZzFPd2I1dnBmM2NobFRkbG9h=
ckd0VU0yaGc2MzREeWhzNE10c25GVUxSaE9Rc0FGb2Q4em1waUphOWZxbkZ5TGh6NHpqVjRYODR=
qcW5fU3ZmVzVIaWtGZ1lPUlZaaTdNTmxERQ&amp;q=3Dhttps%3A%2F%2Fkb.ettus.com%2Fim=
ages%2F5%2F5b%2Frfnoc4_workshop_slides_2020_part_1.pdf&amp;v=3DM9ntwQie9vs"=
 rel=3D"nofollow" target=3D"_blank" dir=3D"auto" style=3D"font-family:Robot=
o,Arial,sans-serif;font-size:14px;white-space:pre-wrap;background-color:rgb=
(249,249,249)">https://kb.ettus.com/images/5/5b/rfno...</a><span dir=3D"aut=
o" class=3D"gmail-style-scope gmail-yt-formatted-string" style=3D"margin:0p=
x;padding:0px;border:0px;background:rgb(249,249,249);color:rgb(3,3,3);font-=
family:Roboto,Arial,sans-serif;font-size:14px;white-space:pre-wrap">
Part 2: Deep dive into RFNoC 4 - </span><a class=3D"gmail-yt-simple-endpoin=
t gmail-style-scope gmail-yt-formatted-string" href=3D"https://www.youtube.=
com/redirect?event=3Dvideo_description&amp;redir_token=3DQUFFLUhqbmJabXRUbG=
JhVHNzak4wVGhNeXVXc2h4RUpkQXxBQ3Jtc0tsNlJJNGJjY0VRSWJqLTNhenZoWUhoODZ1cGJYN=
EVyTFRPNjl5UURxVmRuYmVmQTktMnlrWmJzMksxS1Y5b0xxd2lTaFdoTUhyYWdQM1FHMHk4bkpR=
Q2ZXS3R3QTI0TXJNM0hwX3h2SU5LUnJZdHM0SQ&amp;q=3Dhttps%3A%2F%2Fkb.ettus.com%2=
Fimages%2Fe%2Fe9%2Frfnoc4_workshop_slides_2020_part_2.pdf&amp;v=3DM9ntwQie9=
vs" rel=3D"nofollow" target=3D"_blank" dir=3D"auto" style=3D"font-family:Ro=
boto,Arial,sans-serif;font-size:14px;white-space:pre-wrap;background-color:=
rgb(249,249,249)">https://kb.ettus.com/images/e/e9/rfno...</a><span dir=3D"=
auto" class=3D"gmail-style-scope gmail-yt-formatted-string" style=3D"margin=
:0px;padding:0px;border:0px;background:rgb(249,249,249);color:rgb(3,3,3);fo=
nt-family:Roboto,Arial,sans-serif;font-size:14px;white-space:pre-wrap">

Useful Knowledge Base Application Notes:
Getting Started with RFNoC in UHD 4.0 - </span><a class=3D"gmail-yt-simple-=
endpoint gmail-style-scope gmail-yt-formatted-string" href=3D"https://www.y=
outube.com/redirect?event=3Dvideo_description&amp;redir_token=3DQUFFLUhqa2d=
3MFBKZzJCUW5VRFd2cFlIalR6MGtCLTZmUXxBQ3Jtc0trY0pKOWNCamw5dmd2N2NMbFl5MHFXb2=
JVUEdWLVZNSWk2TkZRTy03X0FuRFo5aVdSdGtialVrLTN1T0lUSGNYTy1OaGRWOUh3T0NhdWV2d=
TF0LVljNkxlUFBvY0pqZ2RHLTkxUmIwZEdfcmczYjY3TQ&amp;q=3Dhttps%3A%2F%2Fkb.ettu=
s.com%2FGetting_Started_with_RFNoC_in_UHD_4.0&amp;v=3DM9ntwQie9vs" rel=3D"n=
ofollow" target=3D"_blank" dir=3D"auto" style=3D"font-family:Roboto,Arial,s=
ans-serif;font-size:14px;white-space:pre-wrap;background-color:rgb(249,249,=
249)">https://kb.ettus.com/Getting_Started_...</a><span dir=3D"auto" class=
=3D"gmail-style-scope gmail-yt-formatted-string" style=3D"margin:0px;paddin=
g:0px;border:0px;background:rgb(249,249,249);color:rgb(3,3,3);font-family:R=
oboto,Arial,sans-serif;font-size:14px;white-space:pre-wrap">
RFNoC 4 Migration Guide - </span><a class=3D"gmail-yt-simple-endpoint gmail=
-style-scope gmail-yt-formatted-string" href=3D"https://www.youtube.com/red=
irect?event=3Dvideo_description&amp;redir_token=3DQUFFLUhqbkhKQ09JV3gyQXplR=
Go2X29ibXR1bXFHUENUUXxBQ3Jtc0ttZV9ma1VZU2RDNWhpNEUxM0FDSWxiQTZwS0V2RHpMalRk=
WnZ6VVAtUUZXOWk1T0REWE5WMDVwcXM5QlNFRGhLSkNGY3dlRkxYZ1NzTHVDSWZJTFhlUE83dG9=
KbzdiWUsyMXlFUmVrMXVQUTNzOUsyOA&amp;q=3Dhttps%3A%2F%2Fkb.ettus.com%2FRFNoC_=
4_Migration_Guide&amp;v=3DM9ntwQie9vs" rel=3D"nofollow" target=3D"_blank" d=
ir=3D"auto" style=3D"font-family:Roboto,Arial,sans-serif;font-size:14px;whi=
te-space:pre-wrap;background-color:rgb(249,249,249)">https://kb.ettus.com/R=
FNoC_4_Migratio...</a><span dir=3D"auto" class=3D"gmail-style-scope gmail-y=
t-formatted-string" style=3D"margin:0px;padding:0px;border:0px;background:r=
gb(249,249,249);color:rgb(3,3,3);font-family:Roboto,Arial,sans-serif;font-s=
ize:14px;white-space:pre-wrap">

Other useful videos:
Exploring RFNoC 4 with the UHD Python API - </span><a class=3D"gmail-yt-sim=
ple-endpoint gmail-style-scope gmail-yt-formatted-string" href=3D"https://w=
ww.youtube.com/watch?v=3Dfbcxm7f-Tj0&amp;t=3D0s" dir=3D"auto" style=3D"font=
-family:Roboto,Arial,sans-serif;font-size:14px;white-space:pre-wrap;backgro=
und-color:rgb(249,249,249)">https://youtu.be/fbcxm7f-Tj0</a><span dir=3D"au=
to" class=3D"gmail-style-scope gmail-yt-formatted-string" style=3D"margin:0=
px;padding:0px;border:0px;background:rgb(249,249,249);color:rgb(3,3,3);font=
-family:Roboto,Arial,sans-serif;font-size:14px;white-space:pre-wrap">
RFNoC 3 workshop video - </span><a class=3D"gmail-yt-simple-endpoint gmail-=
style-scope gmail-yt-formatted-string" href=3D"https://www.youtube.com/watc=
h?v=3DVbODcrmpLaU&amp;t=3D0s" dir=3D"auto" style=3D"font-family:Roboto,Aria=
l,sans-serif;font-size:14px;white-space:pre-wrap;background-color:rgb(249,2=
49,249)">https://youtu.be/VbODcrmpLaU</a><br></div></div><div><br></div>Hop=
e this helps,<div>-Jeff</div><div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, May 21, 2022 at 2:33 AM sp h &lt;<a h=
ref=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">when I examine RFNOC block that is in the=C2=A0belo=
w path, I am faced with a wire ce_clk and ce_rst, but in rfnoc-example ther=
e is not a ce_clk.<div><br><div>uhd-4.1.0.5/fpga/usrp3/lib/rfnoc/blocks<br>=
</div></div><div><br></div><div>Can anyone guide me ce clocks?=C2=A0 why in=
stead using rfnoc_chdr clk, original=C2=A0blocks uses ce clock?</div><div><=
br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div></div>

--000000000000e6c97a05df89d9db--

--===============3594544844310931783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3594544844310931783==--
