Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 553F33043E8
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jan 2021 17:38:05 +0100 (CET)
Received: from [::1] (port=45300 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4RLq-0002H0-Mp; Tue, 26 Jan 2021 11:37:58 -0500
Received: from mail-oo1-f48.google.com ([209.85.161.48]:33473)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1l4RLh-0001nW-EQ
 for usrp-users@lists.ettus.com; Tue, 26 Jan 2021 11:37:49 -0500
Received: by mail-oo1-f48.google.com with SMTP id u7so3662389ooq.0
 for <usrp-users@lists.ettus.com>; Tue, 26 Jan 2021 08:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oecL5SiftcJMlkhf6WwiV5v08hg1k5gBc9lTBpMSwt4=;
 b=dGoYM5Aj4/XTMuhOrdcO/rCxA0P3j+LpOtxT8nGM4nTCF7HPMHaMc+VI7VG7IzMzWr
 EMkNogvfbLSqlp+BMLh84jp5yx3/COdkMdcjMGeQySOIVCZ/q2nUysDx8w2iOPNCVbKF
 BUmMwnDSeSu22GRvk5JAr62a/uX1eHqxYGS/D4d2WTP9XkqnDZ6Nt2cVKyDaczYIQSQc
 mxZf5XXRXzS/qgBo885NX7ooGZLJXsHoPJ2e+4g4T7S/Z0aPVodClaG9Mo7/ez5u4yML
 SRaISQhYKMVOmr1XXkc8V5sPse+Lzsc5lDhsMVySN/Mp2kNWCMIldK2yzArq3TjIyMsL
 1SKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oecL5SiftcJMlkhf6WwiV5v08hg1k5gBc9lTBpMSwt4=;
 b=iaR4MDxZ2pPyltGJdoOZQfLfhgMUTkWFao0aNP+ElsZgRko+Q3aIXYbBTV4X8DUZXH
 jlFNbY8ANrFre/hx4kJFgfoN0WoT872/JGWtTUZc4zeXGmRLZKGVYodeP/Y9V7uzdrjM
 wTcYtDmrzKwjV7CdfggeEnVsbzy3kls2EMWdAVBPgNedZ2YMVuTBtGQ5lV98zkRxnY2f
 NxArlsP9RKuMGJtBvCCc9BjPr57co9L0+emq+i//89EPyShpDfYYMF6C4riMdp6JcDmi
 9bRHXXjd7bYPZ927MJ3q160wB0Mic6PS5A4JIJeQkvVfE0WTkTGYjZRkI6cS2XbWfU/E
 d+Aw==
X-Gm-Message-State: AOAM532R+8QkGdRJlah7LSzkVzKlVUsaPBDJ/iqQDikmwoB+7o5eVJgM
 EXcnnvKBGrQnvO8PiYIeO0OtOABwVglWDYR+f0kVrb+m
X-Google-Smtp-Source: ABdhPJxKWDiVZAXRWzNWEEu2tgVZOjFT/2SiFEbVbvfKOtbBaxCIewaVP8/KW7VpsIPefshUVBDmaZP3YvN1XIIoIeo=
X-Received: by 2002:a4a:9c01:: with SMTP id y1mr4541452ooj.15.1611679028489;
 Tue, 26 Jan 2021 08:37:08 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTRTpgT6++Hdo1a27jhdgenO6su0NkrXRTWkHkaJMcEUkQ@mail.gmail.com>
In-Reply-To: <CAB__hTRTpgT6++Hdo1a27jhdgenO6su0NkrXRTWkHkaJMcEUkQ@mail.gmail.com>
Date: Tue, 26 Jan 2021 10:36:58 -0600
Message-ID: <CAFche=jX2L+FL-Wz-XmFWkr5RkxKUyzWcN9hdXJhivbUnVEpVg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] One or more blocks timed out during flush
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============3042994326416909611=="
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

--===============3042994326416909611==
Content-Type: multipart/alternative; boundary="000000000000fc41ef05b9d0432c"

--000000000000fc41ef05b9d0432c
Content-Type: text/plain; charset="UTF-8"

I believe RFNoC tries to flush any partially transmitted packets out of
blocks during initialization before resetting them. The idea is to get rid
of any leftover data that might still be in the data pipes. I think a
timeout means the noc_shell never saw the end of the last packet before the
timeout. I usually see this warning if I stopped the previous session
abruptly without properly stopping the data transfer.

I think you'll see this warning if your block stops data transfer
mid-packet. Then, on the next session, it can't finish the packet it
started on the previous session. Or something like that. It's probably OK
to ignore if your block uses the resets coming out of the noc_shell to
reset everything.

Wade

On Mon, Jan 25, 2021 at 7:28 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> Using RFNOC 4.0 with a few of my custom blocks, I get the following
> warning at UHD startup (after having run it at least once before):
>
> [WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
>
> I'm confident it is something that I'm doing incorrectly with my block,
> but I'm wondering if anyone can comment on what causes this and / or what
> my block should be doing to avoid it.
>
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000fc41ef05b9d0432c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I believe RFNoC tries to flush any partially transmit=
ted packets out of blocks during initialization before resetting them. The =
idea is to get rid of any leftover data that might still be in the data pip=
es. I think a timeout means the noc_shell never saw the end of the last pac=
ket before the timeout. I usually see this warning if I stopped the previou=
s session abruptly without properly stopping the data transfer.</div><div><=
br></div><div>I think you&#39;ll see this warning if your block stops data =
transfer mid-packet. Then, on the next session, it can&#39;t finish the pac=
ket it started on the previous session. Or something like that. It&#39;s pr=
obably OK to ignore if your block uses the resets coming out of the noc_she=
ll to reset everything.<br></div><div><br></div><div>Wade<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, =
Jan 25, 2021 at 7:28 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br=
><div>Using RFNOC 4.0 with a few of my custom blocks, I get the following w=
arning at UHD startup (after having run it at least once before):</div><div=
><br></div><div>[WARNING] [RFNOC::GRAPH] One or more blocks timed out durin=
g flush!<br></div><div><br></div><div>I&#39;m confident it is something tha=
t I&#39;m doing incorrectly with my block, but I&#39;m wondering if anyone =
can comment on what causes this and / or what my block should be doing to a=
void it.</div><div><br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000fc41ef05b9d0432c--


--===============3042994326416909611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3042994326416909611==--

