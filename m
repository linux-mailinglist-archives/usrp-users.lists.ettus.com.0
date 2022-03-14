Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A0A4D7E57
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 10:18:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F144384C3F
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 05:18:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IiG+lZoA";
	dkim-atps=neutral
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id D5D313842EF
	for <usrp-users@lists.ettus.com>; Mon, 14 Mar 2022 05:17:48 -0400 (EDT)
Received: by mail-yb1-f173.google.com with SMTP id l2so29391177ybe.8
        for <usrp-users@lists.ettus.com>; Mon, 14 Mar 2022 02:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=DmhnDLOdDi810CbYqenlbxhOe9BzMfHpm6mWoNVBSKo=;
        b=IiG+lZoAZrzYf3KV9GQGahug0cKynFI5D49B/3F5icK5CuYLCuQDhNnm7Mie8d3C/p
         Jhvq15FFz2YpM6+CAM24hNJQFHJOudKuv9trloKnYHOazUboro9GHe8E7CjdtxdLJxnw
         J9wUWXAFpa7cXbcxZtE5JJFOzlmHADFSDequ3zzIHrydeYtrpnLSLq+6QAOPsuRjvFyg
         duUwl+LaLjZIOH028LhHLxoD0l0NvyzrOQHv1pzDYJwTzvcC9OYtV2+WsptTKqkcZmi5
         wHg/2EEW0f+nVYism8/7SAs2I26meB16CTKp3pGSf/JRzuZDxgS5q7auBsjTSBVjJcnh
         YOhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=DmhnDLOdDi810CbYqenlbxhOe9BzMfHpm6mWoNVBSKo=;
        b=nzDl1o86o8EmQzgEgysWYyWico7vky1Cq4mT0ee52vgHLwQy5YLIXiVQwRsuDHCKUE
         1xhYSkt9naKhO/FnYGMNqD5lZGpeG52d/dG0ve7ghf2zgBKNzOWZa0cBDnkHWRXQH5pM
         vqn8HEut0WSUdSy7crLj5M6p4KNo94VHrIec2DCRQnyEjOP/lB0ATLQQGiudB/47Nd8U
         mJXjpiVVPojOeEOWADwWBQUO3TqFLz7zWWllayMl3DQO887raVTaqM2CMn2CVPL8v/Ob
         8t+T/TUcEF4PJ4mufZDf/SSmfNazHK+qRIvfP3rZIpG2J1Gjsw60GrjBX8vn7o5jIcVa
         xIfg==
X-Gm-Message-State: AOAM531xovYReeAG5Xp1YXCRksdlWBwiAEHIUdH8fIl75R3Bc3n3Pwzj
	W7jFqpyVIh/UNwNYDsF562OjUnIowg3XPTMJ9+M/A09Pm3Jgy75dtss=
X-Google-Smtp-Source: ABdhPJzWPtTdkswse5T6pngvJZPwZ8w6Q0NDDHEXkz2BDjRYn3Ko4yo/MhUMyyLdAbAOL8KRHwI1nUhxBUN0v/gU64Q=
X-Received: by 2002:a25:c708:0:b0:628:d9f2:c0a6 with SMTP id
 w8-20020a25c708000000b00628d9f2c0a6mr18264481ybe.464.1647249467323; Mon, 14
 Mar 2022 02:17:47 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Mon, 14 Mar 2022 12:47:36 +0330
Message-ID: <CAA=S3PuF6+hUSg0Jo8Lpn8fFgrVgPLBvv66yVMxGwpO0b9OKkA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: RJZZZC7TKDVVHXA5ZRHP3WTVSOITMSXG
X-Message-ID-Hash: RJZZZC7TKDVVHXA5ZRHP3WTVSOITMSXG
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] What's the max legal value for these parameters in RFNOC blocks?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RJZZZC7TKDVVHXA5ZRHP3WTVSOITMSXG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8479791596158581411=="

--===============8479791596158581411==
Content-Type: multipart/alternative; boundary="0000000000005b3b9205da2a27ff"

--0000000000005b3b9205da2a27ff
Content-Type: text/plain; charset="UTF-8"

What's the max legal value for these parameters in RFNOC blocks?
Can I for an RFNOC block set CHDR_W to 1024?
We know for communication between RFNOC blocks in USRP is used AXI4 stream
bus.....
  thanks in advance

parameter CHDR_W = 64,
parameter [5:0] MTU = 10

--0000000000005b3b9205da2a27ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What&#39;s the max legal value for these parameters in RFN=
OC blocks?<div>Can I for an RFNOC block set CHDR_W to 1024?</div><div>We kn=
ow for communication between RFNOC blocks in USRP is used AXI4 stream bus..=
...</div><div>=C2=A0 thanks in advance</div><div><br><div><div style=3D"col=
or:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;=
,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;line-height:19px;=
white-space:pre"><div>  <span style=3D"color:rgb(0,0,255)">parameter</span>=
       CHDR_W          =3D <span style=3D"color:rgb(9,134,88)">64</span>,</=
div><div>  <span style=3D"color:rgb(0,0,255)">parameter</span> [<span style=
=3D"color:rgb(9,134,88)">5</span>:<span style=3D"color:rgb(9,134,88)">0</sp=
an>] MTU             =3D <span style=3D"color:rgb(9,134,88)">10</span></div=
></div></div></div></div>

--0000000000005b3b9205da2a27ff--

--===============8479791596158581411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8479791596158581411==--
