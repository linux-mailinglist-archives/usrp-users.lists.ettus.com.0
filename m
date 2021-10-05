Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A86422B95
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 16:56:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E0F0384AB3
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 10:56:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TsEW4YLz";
	dkim-atps=neutral
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 3FFFF383ED7
	for <usrp-users@lists.ettus.com>; Tue,  5 Oct 2021 10:55:53 -0400 (EDT)
Received: by mail-lf1-f43.google.com with SMTP id x27so86732940lfa.9
        for <usrp-users@lists.ettus.com>; Tue, 05 Oct 2021 07:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=upaJ7Pd8cGnm8xZPHCOycRgzkv1VoUUdUz1pbAYmX8A=;
        b=TsEW4YLz6yCWPhceUrzNXy1Rs1rVKO/e2nEFUmKB3xqir8Ss2QAkkwesSjPANOeT2E
         4GbZYHESC0Mym6dhLwfCf4t0SukVPNriXlEOhkDdQHYWOeFhOEnwfXwGOnrh/RVXfVxi
         vpCBclRqJArdlJvYjZh3kjckBbFtCk+UA9bd/G1/ezTal3n/ygaRxRfvUnebilj00AzL
         MqsiYGBvhSXyKTUErYLBQhtfoG7DfgjMbPf+HAiyLOcfHy4k76+ulpE0V+TW2Ic/lU3E
         hPneiAedg+TxkCxqmujOBSb8pjRNIDlwUp/7RQyAU5Ef2XW6QRG5tMJuj206l0iIn3iS
         D6UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=upaJ7Pd8cGnm8xZPHCOycRgzkv1VoUUdUz1pbAYmX8A=;
        b=J9S2b6r0CYpMnt/7+ritLIRqxreS7Ao8xXZEhXu8PCfSCqQ+a3iRmtBghTOvj45OiG
         i78GS3I+GHOfJbMAfGFfAKxnLMR2H+aDM52EHnfBhIfKr8q7LlCbNcHd4opayeQvK1Xr
         a4Mbm/qn+Ldm8cj7lEBAdESqFMXN+yviwdtMg4ZBz9SiYloQ7FfHU4qsS3Dm79DmqYGk
         HAbC9q8Gs1M7loohuqMCJSz176nxkU9EijMhvsuEDmW7ZDvUrm8PjeFT+kT/cLzHllC6
         9GuuPCjCSQu1eiM1HctylUc/E20xZP+YO0HIEtZKay9nWNH4SgN8diRpYb44/M2kOq9u
         AhPQ==
X-Gm-Message-State: AOAM5300X/EiZmTBo4AlyXgtemcBb8Axn/+k8PdAo5teMqjopf3wsd0Q
	17S8bELrD0Uz0ZW65+RwyoZ7HZMTXvKAO3bhLbs=
X-Google-Smtp-Source: ABdhPJx4+lee0k7povciIbp/sJrZpQqAcZCCUyQdjm2+MCoHSq+EnI8uxJNvxnMrhzkYC5xm+BaIaCB81FGNR3KB6gA=
X-Received: by 2002:a05:6512:10d0:: with SMTP id k16mr3883212lfg.530.1633445745171;
 Tue, 05 Oct 2021 07:55:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAAopBk9+n6aMqQ+n27nezBeXc9AvtT89euJRWHDo39RcfzSLAw@mail.gmail.com>
 <fe7012b8-f339-c7f3-54d4-09c0fd1795cc@gmail.com>
In-Reply-To: <fe7012b8-f339-c7f3-54d4-09c0fd1795cc@gmail.com>
From: Huang Wei <weizardry@gmail.com>
Date: Tue, 5 Oct 2021 15:55:34 +0100
Message-ID: <CAAopBk9EyA4Pu4LFQ3LAV6mMKpKJ9NYLQmN4mmyKapb80Q2uxQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 4CBFFPHH6XKBCJ6SCGCFC6L4Y2JHIFXM
X-Message-ID-Hash: 4CBFFPHH6XKBCJ6SCGCFC6L4Y2JHIFXM
X-MailFrom: weizardry@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reset set_start_time of USRP at runtime
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4CBFFPHH6XKBCJ6SCGCFC6L4Y2JHIFXM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9150218274307315843=="

--===============9150218274307315843==
Content-Type: multipart/alternative; boundary="00000000000066e1f405cd9c3971"

--00000000000066e1f405cd9c3971
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Initially when I create the USRP object, I synchronize USRP to external PPS
though self.usrp1.set_time_next_pps(round(time.time())+1) method.
and in the function get_start(), I wrote like:
  self.stop()
  self.wait()
  self.disconnect_all()
  #self.usrp1.stop()
  #self.usrp1.start()
  self.usrp1.set_start_time(self.usrp1.get_time_now() + uhd.time_spec_t(5))
  self.connect(...)
  self.connect(...)
  self.connect(filesink, self.usrp1)
  self.start
I wish the USRP stops, and restarts transmission 5 sec later every time I
run the get_start() function. But the USRP doesn't stop, and will produces
LLLLLLLLLL on the screen after around 5 sec. If I use
" self.usrp1.set_command_time(self.usrp1.get_time_now() +
uhd.time_spec_t(5))" instead of set_start_time(), it does stop transmission
for 5 sec and start, but it's not the correct command for start time.

Do you have any advice how can I make it work?
I appreciate all your help!

Best regards,
Wei

Marcus D. Leech <patchvonbraun@gmail.com> =E4=BA=8E2021=E5=B9=B410=E6=9C=88=
5=E6=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8B=E5=8D=883:15=E5=86=99=E9=81=93=EF=BC=
=9A

> On 2021-10-05 4:16 a.m., Huang Wei wrote:
> > Hello group,
> >
> > I am running USRP in GRC. I would like the USRP to  stop and restart
> > transmission at specific times. so I wrote a function in the top_block
> > class like:
> > self.stop()
> > self.wait()
> > self.usrp.set_start_time(an absolute time)
> > self.start()
> > It doesn't work. Also I tried  1) add clear_commnad_time() and
> > set_command_time() before; 2) disconnect(), set_command_time() and
> > connect (); 3) usrp.stop(), usrp start(). All these methods don't make
> > sure USRP will restart at the time I want.
> > Is there any command that can achieve this purpose?
> >
> > Thank you very much!
> >
> > Best regards,
> > Wei
> >
> What times are you setting?  How are you setting the initial time on the
> device?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000066e1f405cd9c3971
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Initially when I create the =
USRP object, I synchronize USRP to external PPS though self.usrp1.set_time_=
next_pps(round(time.time())+1) method.</div><div>and in the function get_st=
art(), I wrote like:</div><div>=C2=A0 self.stop()</div><div>=C2=A0 self.wai=
t()</div><div>=C2=A0 self.disconnect_all()</div><div>=C2=A0 #self.usrp1.sto=
p()</div><div>=C2=A0 #self.usrp1.start()</div><div>=C2=A0 self.usrp1.set_st=
art_time(self.usrp1.get_time_now() + uhd.time_spec_t(5))</div><div>=C2=A0 s=
elf.connect(...)</div><div>=C2=A0 self.connect(...)</div><div>=C2=A0 self.c=
onnect(filesink, self.usrp1)</div><div>=C2=A0 self.start</div><div>I wish t=
he USRP stops, and restarts transmission 5 sec later every time I run the g=
et_start() function. But the USRP doesn&#39;t stop, and will produces LLLLL=
LLLLL on the screen after around 5 sec. If I use &quot;=C2=A0self.usrp1.set=
_command_time(self.usrp1.get_time_now() + uhd.time_spec_t(5))&quot; instead=
 of set_start_time(), it does stop transmission for 5 sec and start, but it=
&#39;s not the correct command for start time.</div><div><br></div><div>Do =
you have any advice how can I make it work?</div><div>I appreciate all your=
 help!</div><div><br></div><div>Best regards,</div><div>Wei</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Marcus D. =
Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.co=
m</a>&gt; =E4=BA=8E2021=E5=B9=B410=E6=9C=885=E6=97=A5=E5=91=A8=E4=BA=8C =E4=
=B8=8B=E5=8D=883:15=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 2021-10-05 4:16 a.m., Huang Wei wrote:<=
br>
&gt; Hello group,<br>
&gt;<br>
&gt; I am running USRP in GRC. I would like the USRP to=C2=A0 stop and rest=
art <br>
&gt; transmission at specific times. so I wrote a function in the top_block=
 <br>
&gt; class like:<br>
&gt; self.stop()<br>
&gt; self.wait()<br>
&gt; self.usrp.set_start_time(an absolute time)<br>
&gt; self.start()<br>
&gt; It doesn&#39;t work. Also I tried=C2=A0 1) add clear_commnad_time() an=
d <br>
&gt; set_command_time() before; 2) disconnect(), set_command_time() and <br=
>
&gt; connect (); 3) usrp.stop(), usrp start(). All these methods don&#39;t =
make <br>
&gt; sure USRP will restart at the time I want.<br>
&gt; Is there any command that can achieve this purpose?<br>
&gt;<br>
&gt; Thank you very much!<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Wei<br>
&gt;<br>
What times are you setting?=C2=A0 How are you setting the initial time on t=
he <br>
device?<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000066e1f405cd9c3971--

--===============9150218274307315843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9150218274307315843==--
