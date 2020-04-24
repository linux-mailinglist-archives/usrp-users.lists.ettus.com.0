Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B258D1B6B3B
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 04:19:23 +0200 (CEST)
Received: from [::1] (port=37060 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRnvz-0005Kt-81; Thu, 23 Apr 2020 22:19:19 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:34248)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1jRnvv-0005HR-UV
 for usrp-users@lists.ettus.com; Thu, 23 Apr 2020 22:19:15 -0400
Received: by mail-ot1-f42.google.com with SMTP id 72so9922269otu.1
 for <usrp-users@lists.ettus.com>; Thu, 23 Apr 2020 19:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+UCCMTpdcHNphcyU4qpnOtbyGZr80yobDolg24abpAE=;
 b=OeQou3hF47rD1YGn+fhzlkpQDoqc87s+dKyr59I8/O76Uw/4UanN/lK1BlIVdU4sRn
 SAqG1n3JXPowyMklQd8dr7bU1NqhRARGsKN1hAuAUwrB5Vj4+Q1SfSqR7BjfY3/Rg0UZ
 zRswrUxtz1IQ5Nw6hp3upJ+x09MXBm+BgGlUmNcpQua79mwYCq1xPGqDsiksVNOY/NNh
 8frUwgKIq0qrBi4JiDu3RZi+a8xnAiII2WJnsvdWnI7MuGPDVlhuUqu1ouhW+wA8jP3Z
 WgDVvIuei0T4U9D3N29BFRQwHTujV6Wfm06an1y/VJvfHT/RplL0vdNV2voW6iv4CsQE
 S06A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+UCCMTpdcHNphcyU4qpnOtbyGZr80yobDolg24abpAE=;
 b=XbP2Klt8ukN5z9Qqf9cIubmxRIIzhr8dfU7KCUykLXl8J3JFqWbh5UT3MxQ4mnbDIJ
 uaxO67D7BQyCCHrvu2v3jglPZqH8p80n/kGsUbTAFdVer4u0XrPX1Ipzfk0N1mBUdM/b
 /Zad2mRuTy7a73KUgCB3tWuRk0YoRQwWlR5izyouFe9+cdg/ATk+qKO8JZ96V6hTser3
 VgUvY6LVFW2hJzUcX/uqGuuve0ciP+fh5uIbnDwYYVG7sBhTr1OuoTQKZ4/E56L7wGfB
 Y4sxmkbOLLhKDfUufp0spc67cP2ico1kUrtz30jWegUcuhRzzyP4h4D5q2SNDJKmMWVu
 IZvw==
X-Gm-Message-State: AGi0PuZDc4nlOenq82Nre7yLzCat6K/3OOtWhEzuA4aUdIkbJjAjXwiA
 L4c9iz6PyGx+b5+Azux06PkyiK1ygAP/bSs23TlSoyK8
X-Google-Smtp-Source: APiQypLMpnJ8Ksff+xEfVa4l8PvePfmPVg2J1U+LwXHWcaRZQZQgPPUKar0z8QvouhXRDeAGwrYMIHMIbBlUfrlQ4Io=
X-Received: by 2002:aca:4b10:: with SMTP id y16mr5547939oia.23.1587694715151; 
 Thu, 23 Apr 2020 19:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRkiAjJ4H7ehSMHfjsO3NDLpghzjJpnZMZw6-MTVYp8hw@mail.gmail.com>
In-Reply-To: <CAB__hTRkiAjJ4H7ehSMHfjsO3NDLpghzjJpnZMZw6-MTVYp8hw@mail.gmail.com>
Date: Thu, 23 Apr 2020 21:18:23 -0500
Message-ID: <CAFche=gmhz5khOrpufGLN2hW1+SvhW3KA7nfR0mna570BOZs3Q@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] using 'replay' block with 'duc'
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4974459516045652776=="
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

--===============4974459516045652776==
Content-Type: multipart/alternative; boundary="000000000000823b4d05a3fffb75"

--000000000000823b4d05a3fffb75
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

Thanks for the example! I'd take a look to see if I can reproduce the issue
and figure out what's going on. I've been working recently on the Replay
block, so I'm very interested to understand what's going on.

Thanks,

Wade

On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I am having an issue with UHD 3.15.LTS using the replay block.  When I
> play out my previously stored samples the first time, everything works
> fine.  But after stopping the first time, if I try to start playing out
> again, I get a whole bunch of 'Lates' and no RF output.
>
> In order to duplicate the problem with an Ettus example, I modified
> 'replay_samples_from_file' to add a loop and command prompt so that the
> user could hit <enter> to start playing out while still using <ctrl-c> to
> stop.  Unfortunately for me, this worked fine and did not show the problem.
>
> Next, I further modified the example to place a DUC block in between the
> Replay block and the Radio.  Now it duplicates the issue perfectly
> (modified example attached).
>
> So, perhaps I need to clear the DUC in some way when stopping the
> streaming??  But if so, I'm not really sure how to do so.
>
> Thanks.
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000823b4d05a3fffb75
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Thanks for the examp=
le! I&#39;d take a look to see if I can reproduce the issue and figure out =
what&#39;s going on. I&#39;ve been working recently on the Replay block, so=
 I&#39;m very interested to understand what&#39;s going on.<br></div><div><=
br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23=
, 2020 at 1:36 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>=
I am having an issue with UHD 3.15.LTS using the replay block.=C2=A0 When I=
 play out my previously stored samples the first time, everything works fin=
e.=C2=A0 But after stopping the first time, if I try to start playing out a=
gain, I get a whole bunch of &#39;Lates&#39; and no RF output.</div><div><b=
r></div><div>In order to duplicate the problem with an Ettus example, I mod=
ified &#39;replay_samples_from_file&#39; to add a loop and command prompt s=
o that the user could hit &lt;enter&gt; to start playing out while still us=
ing &lt;ctrl-c&gt; to stop.=C2=A0 Unfortunately for me, this worked fine an=
d did not show the problem.</div><div><br></div><div>Next, I further modifi=
ed=C2=A0the example to place a DUC block in between the Replay block and th=
e Radio.=C2=A0 Now it duplicates the issue perfectly (modified example atta=
ched).</div><div><br></div><div>So, perhaps I need to clear the DUC in some=
 way when stopping the streaming??=C2=A0 But if so, I&#39;m not really sure=
 how to do so.</div><div><br></div><div>Thanks.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000823b4d05a3fffb75--


--===============4974459516045652776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4974459516045652776==--

