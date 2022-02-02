Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC1D4A7939
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 21:12:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 065C138548C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 15:12:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="I149z+Da";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 65ACB38546D
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 15:11:45 -0500 (EST)
Received: by mail-yb1-f175.google.com with SMTP id v186so2197161ybg.1
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 12:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NUC5iULo72VGmiWju3mPVuMnKrXXMbLLZOrxqz+c7RE=;
        b=I149z+DaSYEtoDwiA4N1kFq1AI6Emj/5NFyzLcXaWSUrxofJWfnQOLNvgOI+Pjpj/m
         /DUfnX03THQbBb1srh+2SFG5CqRfDNNiQfPlibtSkvWtH0cHQ6CZJ2yAo5+Qsj7njsg/
         eTLLEOU/crq5Y1kpavmb+yyBQbBZ40ZUpBy27pLdl93g3r+w0SP9HemnaVR4YII1V4P8
         sjDjRbQ2jabmDG6cX+jsLf6jLVEPj2MdVGdWqecy9B2WXYiCgOq6CAe2jWalidiaNYHy
         z6gbwXtbTuiNl+RlfKN1GyCmGXr596OPFl37HEfiplaQh4PxJVOU93LoFuQv2ce27yhF
         M54g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NUC5iULo72VGmiWju3mPVuMnKrXXMbLLZOrxqz+c7RE=;
        b=H8ZnD/mLaLoQ4D3FGOVnGrMyO1Hfr5je+z5yupa9AH5/pBila/tMx8HdDYMd2WeJ8/
         i1gc8ngGjguOIUXWtMxqt7M3dhzbO373crco3BNuhu8e3/qxW3qHmX3vQoIr5EVSbWEx
         bhwngVeMFAZxPlK7DbigC3FFEqdA4/8vf7Ho28JK+7KMQlm+T9OVhhMkPmujvg6GeE5m
         BIuBXrG+y/jyXV1Fe3NjMiiR+vWofnbWoo2ulyQ6rnQcDfukgbRkGIkWAMkuHkrsZ0DV
         X5SSTu/BjF42kNAe88d2LwVs56YbU7MQ/5gtPXIsfBntypRszvK0nesp+jal+4TYREC3
         vSGQ==
X-Gm-Message-State: AOAM532GNZFciOanrKPIpV5PVicPZred1Sj2wnPBuiDcsSxQ34z3XQuF
	6g/+JgqE06GjjODZeW5rN5mXWXp9A7D0vl30QF4nqQ8RzIE=
X-Google-Smtp-Source: ABdhPJxtrQnrA4ReSidqZsMVuXZ4mBXSrWEhTXgtZyfgvG7H0K1QhGoTKvr9IUkkKZqC8m8Okazor/K9l1aEhNYu6oE=
X-Received: by 2002:a25:25c4:: with SMTP id l187mr45245978ybl.13.1643832704337;
 Wed, 02 Feb 2022 12:11:44 -0800 (PST)
MIME-Version: 1.0
References: <164366958084.11274.12985129402155989646@mm2.emwd.com>
 <CACDReSwaUtZmNFzRrZnOb0dz3E0_RA=OD0L2dBejHXcMxd-w=w@mail.gmail.com>
 <CAB__hTT5bqDK-MPbS_1wZHFpqjP5XNp25eQdamZHhx+=QPpkuQ@mail.gmail.com>
 <CAB__hTTGRP0uBZpcs9jWT84N=7CHYtQfx1+WjcupqsdPz9FB7A@mail.gmail.com>
 <CACDReSyjBnXe5uYYAyGoAnh1+jhZSAKtz6BTfix6haDGn==rEQ@mail.gmail.com>
 <CAB__hTQxHsDTCXkLWOn9eyiFSyiMcP2DdoMFReycC2K8jNMhjw@mail.gmail.com>
 <CAB__hTTLwMA9Pz7_COWoff_5qCscHssxk66k5G2zL=OZFxHN0w@mail.gmail.com>
 <CACDReSzP726PKt+Ja9pY+eNr=jOUx5Ei2=xN3teH2hL8t_O+Ew@mail.gmail.com>
 <CAB__hTSs4v0uSvCC+ESniGc4uLH2WHhfJP9_7uAtEhR_bi9e+g@mail.gmail.com>
 <CACDReSwqf0-O_3o-G6cJxFSmoQi3CXgfWASLutEPbutarRoWnw@mail.gmail.com>
 <CAB__hTResfj4Q_5rWTyfBAgDOfDowj_JSLwzrjLGgukCn5Puvw@mail.gmail.com> <CACDReSzXRBPudtRWBuDj_j0zkYZNNRp10sjsG=dLjz6ksvbdSg@mail.gmail.com>
In-Reply-To: <CACDReSzXRBPudtRWBuDj_j0zkYZNNRp10sjsG=dLjz6ksvbdSg@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 2 Feb 2022 15:11:33 -0500
Message-ID: <CAB__hTRhcUSzo7DWTZS2iCx1NzZ0r6zBC02Lt+hu2o=xKWz-kg@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Message-ID-Hash: KZ7CJF6QGCR6NLVIUPNTL572L6RFDC2Y
X-Message-ID-Hash: KZ7CJF6QGCR6NLVIUPNTL572L6RFDC2Y
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about replay block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KZ7CJF6QGCR6NLVIUPNTL572L6RFDC2Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7354824494851127189=="

--===============7354824494851127189==
Content-Type: multipart/alternative; boundary="0000000000006a201e05d70ea03b"

--0000000000006a201e05d70ea03b
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 2, 2022 at 12:11 PM Ofer Saferman <ofer@navigicom.com> wrote:

>
> Thank you for your quick response.
> One last question in order to complete my understanding.
> From what you are saying then the sequence of events should be:
> radio_ctrl->issue_stream_cmd(cmd,port0)
> replay_ctrl->record(....,port0)
> radio_ctrl->issue_stream_cmd(cmd,port1)
> replay_ctrl->record(....,port1)
>
> If I understand you correctly then if I issue the stream command late
> enough in the future and issue the recording commands, the recording itself
> will not start until the time stamp configured in the stream command?
>
I don't think it matters the order of the record except to say that both of
them should precede the start of streaming.

A slight modification of what you stated: if you issue the stream command
late enough in the future, the radio will not stream any samples until the
time stamp. Both radios will start streaming on the same time sample. So,
the replay block doesn't have to do anything. It just waits until the first
sample arrives and then stores it in the first memory location. This
happens for both replay blocks. It is the radio (not the recording at the
replay block) that maintains time alignment.

--0000000000006a201e05d70ea03b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Feb 2, 2022 at 12:11 PM Ofer Safe=
rman &lt;<a href=3D"mailto:ofer@navigicom.com">ofer@navigicom.com</a>&gt; w=
rote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div><br></div><div>Thank you for your qu=
ick response.</div><div>One last question in order to complete my understan=
ding.</div><div>From what you are saying then the sequence of events should=
 be:</div><div><span style=3D"color:rgb(61,133,198)">radio_ctrl-&gt;issue_s=
tream_cmd(cmd,port0)<br></span></div><div>
<span style=3D"color:rgb(61,133,198)">replay_ctrl-&gt;record(....,port0)</s=
pan>

<span style=3D"color:rgb(61,133,198)">
</span></div><div><span style=3D"color:rgb(61,133,198)">radio_ctrl-&gt;issu=
e_stream_cmd(cmd,port1)

</span></div><div><span style=3D"color:rgb(61,133,198)"></span></div><div><=
span style=3D"color:rgb(61,133,198)">replay_ctrl-&gt;record(....,port1)</sp=
an></div><div><br></div><div>If I understand you correctly then if I issue =
the stream command late enough in the future and issue the recording comman=
ds, the recording itself will not start until the time stamp configured in =
the stream command?<br></div></div></blockquote><div>I don&#39;t think it m=
atters the order of the record except to say that both of them should prece=
de the start of streaming.=C2=A0=C2=A0</div><div><br></div><div>A slight mo=
dification of what you stated: if you issue the stream command late enough =
in the future, the radio will not stream any samples until the time stamp. =
Both radios will start streaming on the same time sample. So, the replay bl=
ock doesn&#39;t have to do anything. It just waits until the first sample a=
rrives and then stores it in the first memory location. This happens for bo=
th replay blocks. It is the radio (not the recording at the replay block) t=
hat maintains time alignment.=C2=A0</div></div></div>

--0000000000006a201e05d70ea03b--

--===============7354824494851127189==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7354824494851127189==--
