Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2BD3B11A0
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jun 2021 04:14:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80656383E88
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 22:14:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="MPaXyMsg";
	dkim-atps=neutral
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B557383E19
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 22:13:47 -0400 (EDT)
Received: by mail-oi1-f174.google.com with SMTP id x196so1602982oif.10
        for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 19:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WX4gTVkBkvU7XpHxd5drW9sdypEvX8f32jLloj7k9cI=;
        b=MPaXyMsg36BGWvO5mlyaZ3+7y5kaB9nPz82CsC1Inij1Z9xkdNN0A5v6+bujOymFGE
         NALzcKNNVPLF8LW8u7T3CSPd1h6ihha8mlNA7AaCyuoWnoDGYSmXnXeZyyt4jDXNiX9o
         v+kIpGL+chSgecqDgSrI+p4BQT3YNoelx9Wtnq6CSA1cI01zmZHZ8tSgLxYr5j5xxlPx
         RqM03M9B1ROfg8wlUcyQxCbi/NfErYS5gOX2Jr+jpus40zMGz319/7Ia+rKPC3jXs8DQ
         FzDxpMSNBG8HHY8pmIrN1dUe+AxJcv5qtUy2Fl0IMZO/rfDeRQqa76YqM0a5KKdAa5RP
         9lUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WX4gTVkBkvU7XpHxd5drW9sdypEvX8f32jLloj7k9cI=;
        b=igmP0VA/EtrkofA5tQpI1DgTWDivJJjaE0a/tJZsgCWN/4CjB9FlT74of9gC0DP+ZY
         bpMUQTx9Iwe4O9n4b774/VDPt4tZ2emj1TtStpy4HUiyT+gUuYhR1XfrenczGFlaLLRD
         1/e8SGGmtY3txj1yY88fHpeD8Ha8zJfzka3QmGR83pZU7PfmtcUo5HJXXqdaFuVHAgDp
         HG6xpdpcfYQd5htpMJcLPOp8GJddp8FFgCzNM4CsqoswJZOjRTHt6akehSy8wdOYJLj8
         EWDxMUbNSEi9eeZS9uWpcI1F70oSzYxoJh2o993LGaxVrvXgstbMUnFzK9ueO1fj4RkG
         sNXQ==
X-Gm-Message-State: AOAM532NdWcaUTntiU+5MESD2vWsaTX+o5R1thnMdkLcZRt5ayUkg3cU
	iJXOsYPzS/UyDVDLxkcHQ1C23VUTQQmIjHkdTv8bk+q3
X-Google-Smtp-Source: ABdhPJzygkVyhGD7BSz5ygUuAEQ2wa0xbwL4QngfXw4O3RLIS0NKX1dSfQ44d/Wuy5YgLbjDBKcH2gkfHmxZZHnbIQE=
X-Received: by 2002:aca:c78e:: with SMTP id x136mr1355283oif.145.1624414426526;
 Tue, 22 Jun 2021 19:13:46 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR19MB412246ABCFAEE641D017D58A930E9@DM6PR19MB4122.namprd19.prod.outlook.com>
 <CAFche=hNXcQwAXvLkQ4-U9LrC=fJA7_Th3KCFj0b=XfRcwewng@mail.gmail.com> <DM6PR19MB4122868C9A7FDAD75279E5AD930A9@DM6PR19MB4122.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB4122868C9A7FDAD75279E5AD930A9@DM6PR19MB4122.namprd19.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 22 Jun 2021 21:13:31 -0500
Message-ID: <CAFche=h+4eog7pSZ00HAGbM=e9N1ta6547e=gpwwNmhGJWTwrA@mail.gmail.com>
To: Jeff Clintoon <jeffc10504@hotmail.com>
Message-ID-Hash: NVXTYBJW62V6PU2EAKE6RFNCTRJUMMPW
X-Message-ID-Hash: NVXTYBJW62V6PU2EAKE6RFNCTRJUMMPW
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom image build errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NVXTYBJW62V6PU2EAKE6RFNCTRJUMMPW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7783201773553728194=="

--===============7783201773553728194==
Content-Type: multipart/alternative; boundary="000000000000dc874905c565740f"

--000000000000dc874905c565740f
Content-Type: text/plain; charset="UTF-8"

Jeff,

I would think you could use size 0, even for ep0, if you're really not
doing any TX streaming from the host. A size of 0 gets coerced to the
minimum size, which I think is 32. I might set it to something a bit larger
to be on the safe side, maybe 512.

Wade

On Mon, Jun 21, 2021 at 9:04 AM Jeff Clintoon <jeffc10504@hotmail.com>
wrote:

> Wade,
>
> Thanks for the help.  After fixing that port conflict (I missed one
> copy/paste cleanup) and changing the buffer sizes to 32k from 64k, it
> built.  Reading more about that parameter, it looks like I could set the
> buffer size to 0 for all the ports, as I'm not sending any data for
> transmit.  Perhaps I still need some buffer on ep0 for control traffic?
> It's unclear if that's the case.  Now I just need to write the host-side
> software to get the data.
>
> Thanks,
> Jeff

--000000000000dc874905c565740f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Jeff,</div><div><br></div><div>I would think you coul=
d use size 0, even for ep0,

 if you&#39;re really not doing any TX streaming from the host. A size of 0=
 gets coerced to the minimum size, which I think is 32. I might set it to s=
omething a bit larger to be on the safe side, maybe 512.</div><div><br></di=
v><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Jun 21, 2021 at 9:04 AM Jeff Clintoon &lt;<a h=
ref=3D"mailto:jeffc10504@hotmail.com">jeffc10504@hotmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Wade,<br>
<br>
Thanks for the help.=C2=A0 After fixing that port conflict (I missed one co=
py/paste cleanup) and changing the buffer sizes to 32k from 64k, it built.=
=C2=A0 Reading more about that parameter, it looks like I could set the buf=
fer size to 0 for all the ports, as I&#39;m not sending any data for transm=
it.=C2=A0 Perhaps I still need some buffer on ep0 for control traffic?=C2=
=A0 It&#39;s unclear if that&#39;s the case.=C2=A0 Now I just need to write=
 the host-side software to get the data.<br>
<br>
Thanks,<br>
Jeff</blockquote></div>

--000000000000dc874905c565740f--

--===============7783201773553728194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7783201773553728194==--
