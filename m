Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A6BC0006
	for <lists+usrp-users@lfdr.de>; Fri, 27 Sep 2019 09:28:33 +0200 (CEST)
Received: from [::1] (port=37108 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDkfy-0003CI-Go; Fri, 27 Sep 2019 03:28:26 -0400
Received: from mail-ed1-f47.google.com ([209.85.208.47]:44955)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <daniel.jepson@ettus.com>)
 id 1iDkfu-00036M-Ut
 for usrp-users@lists.ettus.com; Fri, 27 Sep 2019 03:28:23 -0400
Received: by mail-ed1-f47.google.com with SMTP id r16so1413396edq.11
 for <usrp-users@lists.ettus.com>; Fri, 27 Sep 2019 00:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=kbezyNuNyBSgVgljV9SokANaAlWSUoxDvrj+kZ8qzDA=;
 b=Hvr1H+YT2xFau21R5mMkni/QDOyJ8ud6cdZpdIKhCFPMCAwQZYwwOfHyjI+qJAOJ/y
 /iYA26CB+tWNVKOflTQzsLrmccuGwOuV5xweGbJFRQ0jDqc9et2MpnVjCokC1jr3t9YP
 vFDApzyGGvQ2OwYK+VwV0Hpx4L7jLtHOXvmprgAbAkkGnnD8Vn8hWUBShceNnwBIurmm
 AHihdYSkCD5iINQ7pzZQNXDIqvQwqFhNBZd/EYO70pTzu0QZalMHW5jNArpLolCk8Na/
 sU09xJD56WdbISpk3F3olqAOFvyYmjQgLFbjwKiZEG+1D3lc5DfXkyJ3eT+yCi74pluy
 KNbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=kbezyNuNyBSgVgljV9SokANaAlWSUoxDvrj+kZ8qzDA=;
 b=SoN3jiW8gNfk8i1jPSc+3N1LISYgELvcc7TX91cNj89w6l5Mo0g7L9FqcRowszDYIB
 ++HXQUrMVq1RY2y0R+hRP8JkjCt9fECCHnPlw0VlagvFpyKM30smxIHoQ/1CoTmpt94D
 jLmSt7KWenWlcbJmNGQImNQAob1/f3B2MoQPGbMDiroupUNFGVGVipS7P7hsOOwnIc4R
 ez/2dXChSBKvQvC3+bow/iZEZ1IeXh4ayyCiNWvOyEAA8lzNpTdLSD0y4JI5Yh3dL/VY
 LFIuqiqeDaPqMbb2iD4Dq6cCoabFy91I+4DMNbga+tNhIlBzBXQlmU+32SOGBs/yCQ57
 FksQ==
X-Gm-Message-State: APjAAAUPK73LEh61pVS181LOJNcS2/w/ngX9raFiLBmULLYrzBlCWDhM
 TAfYdEBkhMvcc+e2FzdKKenPI+Va1J6roY9Li8KWaFoqE7YNAg==
X-Google-Smtp-Source: APXvYqycXwn2/oEpVW3RFIGwr1bbygvloZilJYwhuL/5zAjRMR7wlZXOS3xQaEcPcC1aGUzxttxQCTzepJZRU8GaSxY=
X-Received: by 2002:a50:f616:: with SMTP id c22mr2842659edn.235.1569569261314; 
 Fri, 27 Sep 2019 00:27:41 -0700 (PDT)
MIME-Version: 1.0
References: <4f9463d7bc9747498b2f2bda40f7b2ec@tudelft.nl>
 <512807eb-9b64-0580-3425-b6016754157a@ihf.tu-bs.de>
 <CA+Zwmn5tGM_i2Y-PtFAKiGtXY+9pMUMZ5LWV82bA8KnvpmHTTg@mail.gmail.com>
 <077ec45a-e337-8116-c1b3-e98c25432a24@ihf.tu-bs.de>
In-Reply-To: <077ec45a-e337-8116-c1b3-e98c25432a24@ihf.tu-bs.de>
Date: Fri, 27 Sep 2019 09:27:30 +0200
Message-ID: <CA+Zwmn4GOcDzH62YDE69Q=DsMJQfUc504wThMXqz4kobKbR0pw@mail.gmail.com>
To: Usrp Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] One sample - 5 ns delay between the two RF
 signals/ X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Daniel Jepson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Jepson <daniel.jepson@ettus.com>
Content-Type: multipart/mixed; boundary="===============7899996709218438342=="
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

--===============7899996709218438342==
Content-Type: multipart/alternative; boundary="0000000000004578f1059383d272"

--0000000000004578f1059383d272
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Fabian. As long as the input PPS is driven by the same RefClk that
is provided to the X310, this system should be ok. You might also consider
driving the PPS on the falling edge of the RefClk to ensure timing is met
at the X310. There are some timing constraints here that might affect
performance, but I wouldn't expect to see a 10 ns shift.

-Daniel

On Thu, Sep 26, 2019 at 3:18 PM Fabian Schwartau via USRP-users <
usrp-users@lists.ettus.com> wrote:

> It is a self build device using a 74LS125D as buffer. The level is 3.3V
> digital.
> As there were no specifications around for the required input levels at
> the time we needed the device, we just measured the levels coming from
> the 1PPS output and replicated them.
>
> Am 26.09.2019 um 13:51 schrieb Daniel Jepson via USRP-users:
> > Hi Fabian, Cherif,
> >
> > What is the external PPS device you are using?
> >
> > -Daniel
> >
> > On Thu, Sep 26, 2019 at 9:18 AM Fabian Schwartau via USRP-users
> > <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
> >
> >     Hi,
> >     I have very similar problem with X310. I am running a C++
> application,
> >     so I have a bit more flexibility I guess. After I do the
> >     set_time_unknown_pps to sync to the 1PPS signal, I run the function
> >     get_time_last_pps and it sometimes has an offset of 10ns (it was 5n=
s
> >     for
> >     an old firmware due to a bug, which was fixed a few weeks ago). If
> that
> >     is the case I just do the sync again until the offset is zero.
> >     I don't know if it is an firmawre problem or if it is because the
> >     signal
> >     integrety of the 1PPS signal is not good enough.
> >     Maybe that is also a solution for you.
> >     Best regards,
> >     Fabian
> >
> >     Am 25.09.2019 um 11:16 schrieb Cherif Diouf via USRP-users:
> >      > Hello,
> >      > I am working with the X310 USRP. I have two identical custom
> blocks
> >      > feeding the RF frontends.
> >      >
> >      > flowchart
> >      > -----------------
> >      > HW Block1 -> RF0-TX1 |---<
> >      > HW Block2 -> RF1-TX1 |---<
> >      >
> >      > The system is synchronized to an external PPS reference. The
> >     sampling
> >      > rate is 200 MSps and the signal bandwidth is 160 MHz for both
> >     channels.
> >      > The two HW blocks start  transmitting at the exactly same time.
> Time
> >      > resolution is 5ns.
> >      > In most cases the two outgoing RF signals present a 1ns time
> offset.
> >      > Which can be understood as a phase offset.
> >      >
> >      > But From time to time there is a 6ns delay between the channels.=
 I
> >      > assume this 6ns comprises the 1ns delay due to phase offset + 5
> >     ns delay
> >      > due to misalignment of outgoing samples.
> >      >
> >      > What could be the origin of this one sample misalignement? Is it
> >     a way
> >      > to fix it? Or working close to the limits of the device should
> such
> >      > behavior be expected?
> >      >
> >      > Thanks in advance
> >      >
> >      > Best Regards
> >      > Cherif
> >      >
> >      >
> >      > _______________________________________________
> >      > USRP-users mailing list
> >      > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> >      >
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >      >
> >
> >     --
> >     --------------------------------------------------
> >     M.-Sc. Fabian Schwartau
> >     Technische Universit=C3=A4t Braunschweig
> >     Institut f=C3=BCr Hochfrequenztechnik
> >     Schleinitzstr. 22
> >     38106 Braunschweig
> >     Germany
> >
> >     Tel.:   +49-(0)531-391-2017
> >     Fax:    +49-(0)531-391-2045
> >     Email: fabian.schwartau@ihf.tu-bs.de
> >     <mailto:fabian.schwartau@ihf.tu-bs.de>
> >     WWW: http://www.tu-braunschweig.de/ihf
> >     --------------------------------------------------
> >
> >     _______________________________________________
> >     USRP-users mailing list
> >     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> >     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> >
> >
> > --
> >
> > Daniel Jepson
> >
> > Digital Hardware Engineer
> >
> > National Instruments
> >
> > O: +1.512.683.6163
> >
> > daniel.jepson@ni.com <mailto:daniel.jepson@ni.com>
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
> --
> --------------------------------------------------
> M.-Sc. Fabian Schwartau
> Technische Universit=C3=A4t Braunschweig
> Institut f=C3=BCr Hochfrequenztechnik
> Schleinitzstr. 22
> 38106 Braunschweig
> Germany
>
> Tel.:   +49-(0)531-391-2017
> Fax:    +49-(0)531-391-2045
> Email:  fabian.schwartau@ihf.tu-bs.de
> WWW:    http://www.tu-braunschweig.de/ihf
> --------------------------------------------------
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20

Daniel Jepson

Digital Hardware Engineer

National Instruments



O: +1.512.683.6163

daniel.jepson@ni.com

--0000000000004578f1059383d272
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Fabian. As long as the input PPS is driven by the s=
ame RefClk that is provided to the X310, this system should be ok. You migh=
t also consider driving the PPS on the falling edge of the RefClk to ensure=
 timing is met at the X310. There are some timing constraints here that mig=
ht affect performance, but I wouldn&#39;t expect to see a 10 ns shift.<div>=
<br></div><div>-Daniel</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Sep 26, 2019 at 3:18 PM Fabian Schwar=
tau via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">It is a self build device using a 74LS125D as buffer. T=
he level is 3.3V <br>
digital.<br>
As there were no specifications around for the required input levels at <br=
>
the time we needed the device, we just measured the levels coming from <br>
the 1PPS output and replicated them.<br>
<br>
Am 26.09.2019 um 13:51 schrieb Daniel Jepson via USRP-users:<br>
&gt; Hi Fabian, Cherif,<br>
&gt; <br>
&gt; What is the external PPS device you are using?<br>
&gt; <br>
&gt; -Daniel<br>
&gt; <br>
&gt; On Thu, Sep 26, 2019 at 9:18 AM Fabian Schwartau via USRP-users <br>
&gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt; wrote:<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
&gt;=C2=A0 =C2=A0 =C2=A0I have very similar problem with X310. I am running=
 a C++ application,<br>
&gt;=C2=A0 =C2=A0 =C2=A0so I have a bit more flexibility I guess. After I d=
o the<br>
&gt;=C2=A0 =C2=A0 =C2=A0set_time_unknown_pps to sync to the 1PPS signal, I =
run the function<br>
&gt;=C2=A0 =C2=A0 =C2=A0get_time_last_pps and it sometimes has an offset of=
 10ns (it was 5ns<br>
&gt;=C2=A0 =C2=A0 =C2=A0for<br>
&gt;=C2=A0 =C2=A0 =C2=A0an old firmware due to a bug, which was fixed a few=
 weeks ago). If that<br>
&gt;=C2=A0 =C2=A0 =C2=A0is the case I just do the sync again until the offs=
et is zero.<br>
&gt;=C2=A0 =C2=A0 =C2=A0I don&#39;t know if it is an firmawre problem or if=
 it is because the<br>
&gt;=C2=A0 =C2=A0 =C2=A0signal<br>
&gt;=C2=A0 =C2=A0 =C2=A0integrety of the 1PPS signal is not good enough.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0Maybe that is also a solution for you.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Best regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Fabian<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Am 25.09.2019 um 11:16 schrieb Cherif Diouf via USR=
P-users:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hello,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I am working with the X310 USRP. I have two i=
dentical custom blocks<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; feeding the RF frontends.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; flowchart<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -----------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; HW Block1 -&gt; RF0-TX1 |---&lt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; HW Block2 -&gt; RF1-TX1 |---&lt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; The system is synchronized to an external PPS=
 reference. The<br>
&gt;=C2=A0 =C2=A0 =C2=A0sampling<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; rate is 200 MSps and the signal bandwidth is =
160 MHz for both<br>
&gt;=C2=A0 =C2=A0 =C2=A0channels.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; The two HW blocks start=C2=A0 transmitting at=
 the exactly same time. Time<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; resolution is 5ns.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; In most cases the two outgoing RF signals pre=
sent a 1ns time offset.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Which can be understood as a phase offset.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; But From time to time there is a 6ns delay be=
tween the channels. I<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; assume this 6ns comprises the 1ns delay due t=
o phase offset + 5<br>
&gt;=C2=A0 =C2=A0 =C2=A0ns delay<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; due to misalignment of outgoing samples.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; What could be the origin of this one sample m=
isalignement? Is it<br>
&gt;=C2=A0 =C2=A0 =C2=A0a way<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; to fix it? Or working close to the limits of =
the device should such<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; behavior be expected?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Thanks in advance<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Best Regards<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Cherif<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; _____________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; USRP-users mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"mailto:USRP-users@lists.ettus.com"=
 target=3D"_blank">USRP-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mai=
lto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.co=
m</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A0--------------------------------------------------<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0M.-Sc. Fabian Schwartau<br>
&gt;=C2=A0 =C2=A0 =C2=A0Technische Universit=C3=A4t Braunschweig<br>
&gt;=C2=A0 =C2=A0 =C2=A0Institut f=C3=BCr Hochfrequenztechnik<br>
&gt;=C2=A0 =C2=A0 =C2=A0Schleinitzstr. 22<br>
&gt;=C2=A0 =C2=A0 =C2=A038106 Braunschweig<br>
&gt;=C2=A0 =C2=A0 =C2=A0Germany<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Tel.:=C2=A0 =C2=A0+49-(0)531-391-2017<br>
&gt;=C2=A0 =C2=A0 =C2=A0Fax:=C2=A0 =C2=A0 +49-(0)531-391-2045<br>
&gt;=C2=A0 =C2=A0 =C2=A0Email: <a href=3D"mailto:fabian.schwartau@ihf.tu-bs=
.de" target=3D"_blank">fabian.schwartau@ihf.tu-bs.de</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:fabian.schwartau@ihf.t=
u-bs.de" target=3D"_blank">fabian.schwartau@ihf.tu-bs.de</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0WWW: <a href=3D"http://www.tu-braunschweig.de/ihf" =
rel=3D"noreferrer" target=3D"_blank">http://www.tu-braunschweig.de/ihf</a><=
br>
&gt;=C2=A0 =C2=A0 =C2=A0--------------------------------------------------<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:USRP-users@lists.ettus.com" targe=
t=3D"_blank">USRP-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mailto:US=
RP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&=
gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.ettus.com/mailman/listinfo/=
usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; <br>
&gt; Daniel Jepson<br>
&gt; <br>
&gt; Digital Hardware Engineer<br>
&gt; <br>
&gt; National Instruments<br>
&gt; <br>
&gt; O: +1.512.683.6163<br>
&gt; <br>
&gt; <a href=3D"mailto:daniel.jepson@ni.com" target=3D"_blank">daniel.jepso=
n@ni.com</a> &lt;mailto:<a href=3D"mailto:daniel.jepson@ni.com" target=3D"_=
blank">daniel.jepson@ni.com</a>&gt;<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
<br>
-- <br>
--------------------------------------------------<br>
M.-Sc. Fabian Schwartau<br>
Technische Universit=C3=A4t Braunschweig<br>
Institut f=C3=BCr Hochfrequenztechnik<br>
Schleinitzstr. 22<br>
38106 Braunschweig<br>
Germany<br>
<br>
Tel.:=C2=A0 =C2=A0+49-(0)531-391-2017<br>
Fax:=C2=A0 =C2=A0 +49-(0)531-391-2045<br>
Email:=C2=A0 <a href=3D"mailto:fabian.schwartau@ihf.tu-bs.de" target=3D"_bl=
ank">fabian.schwartau@ihf.tu-bs.de</a><br>
WWW:=C2=A0 =C2=A0 <a href=3D"http://www.tu-braunschweig.de/ihf" rel=3D"nore=
ferrer" target=3D"_blank">http://www.tu-braunschweig.de/ihf</a><br>
--------------------------------------------------<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><p><a name=3D"SignatureSanitize=
r_SafeHtmlFilter__MailAutoSig"><span style=3D"color:black">Daniel
Jepson</span></a></p>

<p><span style=3D"color:black">Digital Hardware Engineer</span></p>

<p><span style=3D"color:black">National Instruments</span></p>

<p><span style=3D"color:black">=C2=A0</span></p>

<p><span style=3D"color:black">O: +1.512.683.6163</span></p>

<p><span style=3D"color:black"><a href=3D"mailto:daniel.jepson@ni.com" targ=
et=3D"_blank">daniel.jepson@ni.com</a></span></p></div></div>

--0000000000004578f1059383d272--


--===============7899996709218438342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7899996709218438342==--

