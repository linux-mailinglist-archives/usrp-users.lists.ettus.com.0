Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA304341E7F
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 14:39:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6559383683
	for <lists+usrp-users@lfdr.de>; Fri, 19 Mar 2021 09:39:02 -0400 (EDT)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 2E228383063
	for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 09:38:09 -0400 (EDT)
Received: by mail-oi1-f174.google.com with SMTP id n140so4775995oig.9
        for <usrp-users@lists.ettus.com>; Fri, 19 Mar 2021 06:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dHpjQG0HOYMS3ir063EijI5Q/BUd/lvPV66CCCcNx4M=;
        b=VDR7qe78LjWq3za4a5YCI3mZanm5RM8wikjQBHPjQk3xBhuyPC+CeGv+7Cz42L90Yk
         /npSgsrUXM2w6THMSUQZj3uUyJ3O0Aa8hrJ7hYQ/h2N6fhjzB1Fg0qEFwmRNQz70vvEb
         nTgyWh1APSifwwQ4Vszz5JG5hUnOP/2W0TtcGRBOXBuKYtQYSXs2t9qeiv/MXQZMXNBv
         /DL5XyFj3LQA9JpXZsMXEkD892cNpBevWQCv1qvWMdmwzNAPCO5gF60JkOafPq9YOqIX
         oUTBnYhHdXPUmTHRx2y+/hGID/qVDkzVKvsEY3tcqFCYHuA2h+ClybVUl/jpjOCz3Pwn
         7BSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dHpjQG0HOYMS3ir063EijI5Q/BUd/lvPV66CCCcNx4M=;
        b=VyZYwE2OMJ6MXdFjhR6wA0Fs779NzqC5/wKnKF13bXRsc0AUXjXgOyWAgbhuGdidKO
         jKDbeVuTpwYK1BAhyLAdQ9dGg3KDE9Nwq3wv51UwO1KaqyMqEhCJZdVspqWUlh5ydOTB
         1q5xbYmW8dyGThA+ozgOd0rQflP++WD3SRWnb8K7pVrTFm15WHNbJoswhcDzsT4VgRMa
         8wnNrXzEtWtdYycefu+GTJ5OKpYnWGlvNJBt6KQReoIv/pl38dSyBQ+byVIXpqnh2uho
         7+nBkC1w2p+oVeSYIOUrb02d3t0WprWDS30jNvDS4BvTSi5iU6piW1Qjf+PNHfqNToCR
         ib/A==
X-Gm-Message-State: AOAM531hK5t3CxRCOcINKC5aiHK/8Ho9thoOwJtJSBUo1SHgTFmSfsP+
	8sxKmSIX5mINAgiJiCFKKJOp03jX0TKaFsJIAohnpQ==
X-Google-Smtp-Source: ABdhPJxNvAL2fcL7jM0lOp/FgGAANmSw/4ygUVgGAD0avcfMGyET9TtW93baXgKhYB9FT77cHT0Catx01byCL/faHiM=
X-Received: by 2002:aca:1814:: with SMTP id h20mr1068710oih.150.1616161088332;
 Fri, 19 Mar 2021 06:38:08 -0700 (PDT)
MIME-Version: 1.0
References: <09c0f397017c4a9b9603c568105f391a@campus.tu-berlin.de>
In-Reply-To: <09c0f397017c4a9b9603c568105f391a@campus.tu-berlin.de>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 19 Mar 2021 09:37:57 -0400
Message-ID: <CAB__hTRONq5=4aOnSYMOa0kLEE0CRYwSCuts02foKMbrFq1Big@mail.gmail.com>
To: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
Message-ID-Hash: D4XQMWES5WDLVIWVK246M3BA355JUEGX
X-Message-ID-Hash: D4XQMWES5WDLVIWVK246M3BA355JUEGX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoch how to build graph just to transmit and receive by using Tx/Rx and Rx2 port on the same daughterboard
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D4XQMWES5WDLVIWVK246M3BA355JUEGX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7587648714995379750=="

--===============7587648714995379750==
Content-Type: multipart/alternative; boundary="0000000000009231a605bde3d3f1"

--0000000000009231a605bde3d3f1
Content-Type: text/plain; charset="UTF-8"

Hi Kasim,
I just tried to run with the graph you described and it worked fine on my
N310. I did not get that error message.
Rob

On Fri, Mar 19, 2021 at 6:24 AM Chang, Kaixin <k.chang@campus.tu-berlin.de>
wrote:

> Dear all,
>
>
> I have problem building rfnoc graph to use Tx/Rx and Rx2 ports on one
> single daughter board.
>
> If I connect
>
> 0/DUC#0:0==>0/Radio#0:0
> 0/Radio#0:1==>0/DDC#0:1
> and connect
>
> tx_stream to 0/DUC#0:0 and 0/DDC#0:1 to rx_stream
>
> I get an error
>     [ERROR] [RFNOC::GRAPH::DETAIL] Node 0/Radio#0cannot handle its current
> topology! (1inputs, 1 outputs)
>     Error: RuntimeError: Graph topology is not valid!
>
> although the static connection of rfnoc block on my device is like
> |   |       Static connections on this device:
> |   |
> |   |   * 0/SEP#0:0==>0/DUC#0:0
> |   |   * 0/DUC#0:0==>0/Radio#0:0
> |   |   * 0/Radio#0:0==>0/DDC#0:0
> |   |   * 0/DDC#0:0==>0/SEP#0:0
> |   |   * 0/Radio#0:1==>0/DDC#0:1
> |   |   * 0/DDC#0:1==>0/SEP#1:0
> |   |   * 0/SEP#2:0==>0/DUC#1:0
> |   |   * 0/DUC#1:0==>0/Radio#1:0
> |   |   * 0/Radio#1:0==>0/DDC#1:0
> |   |   * 0/DDC#1:0==>0/SEP#2:0
> |   |   * 0/Radio#1:1==>0/DDC#1:1
> |   |   * 0/DDC#1:1==>0/SEP#3:0
> |   |   * 0/SEP#4:0==>0/Replay#0:0
> |   |   * 0/Replay#0:0==>0/SEP#4:0
> |   |   * 0/SEP#5:0==>0/Replay#0:1
> |   |   * 0/Replay#0:1==>0/SEP#5:0
> |     ________________________________
>
> so I suggest the path
> 0/DUC#0:0==>0/Radio#0:0
> 0/Radio#0:1==>0/DDC#0:1
> should be connectable?
>
> thanks in advance
>
> Kasim
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009231a605bde3d3f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Kasim,<div>I just tried to run with th=
e graph you described and it worked fine on my N310. I did not get that err=
or message.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Mar 19, 2021 at 6:24 AM Chang, Kaixi=
n &lt;<a href=3D"mailto:k.chang@campus.tu-berlin.de">k.chang@campus.tu-berl=
in.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-4092772995471326752divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-s=
erif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,Not=
oColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymb=
ols">
<p>Dear all,</p>
<p><br>
</p>
<p>I have problem building rfnoc graph to use Tx/Rx and Rx2 ports on one si=
ngle daughter board.
<br>
</p>
<p>If I connect</p>
<p></p>
<div>0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
0/Radio#0:1=3D=3D&gt;0/DDC#0:1</div>
and connect <br>
<p></p>
<p>tx_stream to 0/DUC#0:0 and 0/DDC#0:1 to rx_stream</p>
<p>I get an error</p>
<div>
<div>=C2=A0=C2=A0=C2=A0 [ERROR] [RFNOC::GRAPH::DETAIL] Node 0/Radio#0cannot=
 handle its current topology! (1inputs, 1 outputs)<br>
=C2=A0=C2=A0=C2=A0 Error: RuntimeError: Graph topology is not valid!</div>
<div><br>
</div>
<div>although the static connection of rfnoc block on my device is like</di=
v>
<div>
<div>|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Static connections=
 on this device:<br>
|=C2=A0=C2=A0 |=C2=A0 =C2=A0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Replay#0:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 * 0/Replay#0:1=3D=3D&gt;0/SEP#5:0<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 ________________________________</div>
<br>
</div>
<div>so I suggest the path <br>
</div>
<div>
<div>0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
0/Radio#0:1=3D=3D&gt;0/DDC#0:1</div>
should be connectable?</div>
<div><br>
</div>
<div>thanks in advance</div>
<div><br>
</div>
<div>Kasim<br>
</div>
</div>
<br>
<p></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000009231a605bde3d3f1--

--===============7587648714995379750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7587648714995379750==--
