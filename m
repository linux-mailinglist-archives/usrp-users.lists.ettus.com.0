Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0D78DDE9
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 21:30:24 +0200 (CEST)
Received: from [::1] (port=33660 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxyyU-0007R9-7b; Wed, 14 Aug 2019 15:30:22 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:43841)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1hxyyQ-0007Kl-59
 for usrp-users@lists.ettus.com; Wed, 14 Aug 2019 15:30:18 -0400
Received: by mail-ot1-f47.google.com with SMTP id e12so598215otp.10
 for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2019 12:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c0ruWHDpSloWDItbCoLzvLSK1rApp3xNTL63jd+348M=;
 b=L+CnQx9Xa/oHMX5aW94BF2Z9prDbjh79HIUuxnoLxTI4p5rXX7V8HP1mCb9rsr+DT9
 wvQNSOGg4H7pg+PTiSDdWQ116F9UhqmfOzjWx85aR6mwLp+Mt5GuPp6/q412RSMF/Bql
 UYFZd26dtSgtQX0+hKiEsGE9ZIHRhd46ka+LTaync0jN5wAwab/XHxPWgvNi6+Xu8dgf
 ZMmztg8felmpiBexx/LnUVxzFj128UZkIqR5lXQpl/GZUIldIHNXoP1LdyXXcnz5AE6S
 xqe8Ldv71xK6GgkIU26UiFJeSfhnyQC+o8BpEmNNU8TMVfJr3KCyWp3gbSRQXJu/YUVq
 cHXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c0ruWHDpSloWDItbCoLzvLSK1rApp3xNTL63jd+348M=;
 b=hHcwjlB9ml/9bExV5fT4FgpixyGa18XYIqg41W8mMHcblct/hbCaoqKxAOF1mn+Ceh
 pPhY/kZ6Iq/QlDAd0i+ZoVEHO+Zqg8q1Ysoh+NfGxEWOAYbxgbMjaXK8rXzhvpjYAJot
 mvYJcebNc6WHy3gxoZAXDh/uaZZXYGAU0rrYISdkg2uqTmk+A9Fubxnue465qzANaSSQ
 gObinOZBgIFX1XblUp00/wh6Nwx4Id9plzu6fdQgzhaqEksj7Y9qSZ7HBYdMCJrNwdHJ
 7bO6OwWJnnzYhN4+hWs65ow+KV/osdn2pUnRn9iTCwHWIGdUbtrU7QLodrtJv/4f18rJ
 EAZg==
X-Gm-Message-State: APjAAAWLAtndaL+/thsmzE5WU+rG2nGkwYh4CPdKf2xLNOKPT0YQ/3ym
 nXd38XOUdhkyK1JyoCdHw8ZOPGa65Dh4ZdlxU6ED6w==
X-Google-Smtp-Source: APXvYqxO2Sw3x7Fahy7dHXHz0DGrF32ryaWn9w/VXsR8fDZEQbxFkYsSiQNTceSHoURBdfBsWJgeJnaYrCrOD/y3qac=
X-Received: by 2002:a5e:d618:: with SMTP id w24mr1559303iom.73.1565810977229; 
 Wed, 14 Aug 2019 12:29:37 -0700 (PDT)
MIME-Version: 1.0
References: <1754624003.3660157.1565753634913.ref@mail.yahoo.com>
 <1754624003.3660157.1565753634913@mail.yahoo.com> <5D5382D4.60007@gmail.com>
 <451633320.3650050.1565757496009@mail.yahoo.com> <5D5414F4.6070501@gmail.com>
 <979073040.3843554.1565804979556@mail.yahoo.com> <5D545FBE.6010909@gmail.com>
In-Reply-To: <5D545FBE.6010909@gmail.com>
Date: Wed, 14 Aug 2019 12:29:26 -0700
Message-ID: <CAKJyDkJs=gTDyQ+QVYkvSmf0URD5peydLNecshyZiZdQUgduxA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] UHD Error with X310
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7636329632847069240=="
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

--===============7636329632847069240==
Content-Type: multipart/alternative; boundary="00000000000015681a059018c745"

--00000000000015681a059018c745
Content-Type: text/plain; charset="UTF-8"

Did you follow the instructions in the output and resize the rmem and wmem
buffers?
Please run: sudo sysctl -w net.core.rmem_max=24266666
Please run: sudo sysctl -w net.core.wmem_max=24266666

On Wed, Aug 14, 2019 at 12:24 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 08/14/2019 01:49 PM, Tellrell White wrote:
>
> Marcus
> I am running this in a Linux based VM running Ubuntu 16.04 LTS. The laptop
> I'm using is a Dell Precision 7730 with a Intel Xeon processor w/ cpu @
> 2.90 GHz. It also has 64 GB or RAM. I'm using the 1 GbE on Ethernet port 0
> on the X310. I'm using a sample rate of 1 MHz and center freq of 2.45 Ghz.
> Also, i'm using an older version of GNU Radio: 3.7.7
>
> VM ethernet performance and reliability has not been that good.  Can you
> try this on "bare metal"??
>
> Also, what happens if you just use one of the UHD test tools, like
> "benchmark_rate" ?
>
>
>
> On Wednesday, August 14, 2019, 10:04:39 AM EDT, Marcus D. Leech
> <patchvonbraun@gmail.com> <patchvonbraun@gmail.com> wrote:
>
>
> On 08/14/2019 12:38 AM, Tellrell White wrote:
>
> Marcus
>
>
>
> However, I re-flashed the device with " uhd_image_loader --args type=x300"
> , power cycled and after running uhd_usrp_probe
> get what's shown below. This doesn't seem to be the new image. It's
> showing RFNoC blocks from a previous image that was installed prior to my
> use and when I try to run a flowgraph I'm getting the same error as
> mentioned in my previous message. Ideas??
>
> These just look like the standard RFNOC blocks for X310.   Keep in mind
> that internally, for several releases, UHD uses RFNOC, even if your
>   code doesn't.
>
> What type of hardware is this running on?  What kind of ethernet interface
> is connected to the X310?
>
> What sample rate are you using?
>
> What OS version?  Within a VM, or on raw hardware?
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000015681a059018c745
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Did you follow the instructions in the output and resize t=
he rmem and wmem buffers?<div><span style=3D"color:rgb(29,34,40);font-famil=
y:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px">Ple=
ase run: sudo sysctl -w net.core.rmem_max=3D24266666</span><br></div><div><=
span style=3D"color:rgb(29,34,40);font-family:&quot;Helvetica Neue&quot;,He=
lvetica,Arial,sans-serif;font-size:13px">Please run: sudo sysctl -w net.cor=
e.wmem_max=3D24266666</span><span style=3D"color:rgb(29,34,40);font-family:=
&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px"><br><=
/span></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Wed, Aug 14, 2019 at 12:24 PM Marcus D. Leech via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_2508378258237269445moz-cite-prefix">On 08/14/2019=
 01:49 PM, Tellrell White
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div class=3D"gmail-m_2508378258237269445ydp77728d86yahoo-style-wrap"=
 style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif=
;font-size:13px"> </div>
      <div class=3D"gmail-m_2508378258237269445ydp77728d86yahoo-style-wrap"=
 style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif=
;font-size:13px" dir=3D"ltr">Marcus</div>
      <div class=3D"gmail-m_2508378258237269445ydp77728d86yahoo-style-wrap"=
 style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif=
;font-size:13px" dir=3D"ltr">I am
        running this in a Linux based VM running Ubuntu 16.04 LTS. The
        laptop I&#39;m using is a Dell Precision 7730 with a Intel Xeon
        processor w/ cpu @ 2.90 GHz. It also has 64 GB or RAM. I&#39;m usin=
g
        the 1 GbE on Ethernet port 0 on the X310. I&#39;m using a sample
        rate of 1 MHz and center freq of 2.45 Ghz. Also, i&#39;m using an
        older version of GNU Radio: 3.7.7</div>
    </blockquote>
    VM ethernet performance and reliability has not been that good.=C2=A0 C=
an
    you try this on &quot;bare metal&quot;??<br>
    <br>
    Also, what happens if you just use one of the UHD test tools, like
    &quot;benchmark_rate&quot; ?<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail-m_2508378258237269445ydp77728d86yahoo-style-wrap"=
 style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif=
;font-size:13px"><br>
      </div>
      <div class=3D"gmail-m_2508378258237269445ydp77728d86yahoo-style-wrap"=
 style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif=
;font-size:13px"> </div>
      <div class=3D"gmail-m_2508378258237269445yahoo_quoted" id=3D"gmail-m_=
2508378258237269445yahoo_quoted_6414121447">
        <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Aria=
l,sans-serif;font-size:13px;color:rgb(38,40,42)">
          <div> On Wednesday, August 14, 2019, 10:04:39 AM EDT, Marcus
            D. Leech <a class=3D"gmail-m_2508378258237269445moz-txt-link-rf=
c2396E" href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">&lt;patch=
vonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"gmail-m_2508378258237269445yiv5869272306">
              <div>
                <div class=3D"gmail-m_2508378258237269445yiv5869272306yqt73=
79963785" id=3D"gmail-m_2508378258237269445yiv5869272306yqtfd40325">
                  <div class=3D"gmail-m_2508378258237269445yiv5869272306moz=
-cite-prefix">On
                    08/14/2019 12:38 AM, Tellrell White wrote:<br clear=3D"=
none">
                  </div>
                </div>
                <blockquote type=3D"cite">
                  <div class=3D"gmail-m_2508378258237269445yiv5869272306yqt=
7379963785" id=3D"gmail-m_2508378258237269445yiv5869272306yqtfd68699">
                    <div class=3D"gmail-m_2508378258237269445yiv5869272306y=
dpfeed99a8yahoo-style-wrap" style=3D"font-family:&quot;Helvetica Neue&quot;=
,Helvetica,Arial,sans-serif;font-size:13px"> </div>
                    <div class=3D"gmail-m_2508378258237269445yiv5869272306y=
dpfeed99a8yahoo-style-wrap" style=3D"font-family:&quot;Helvetica Neue&quot;=
,Helvetica,Arial,sans-serif;font-size:13px" dir=3D"ltr">Marcus=C2=A0</div>
                    <br clear=3D"none">
                    <div class=3D"gmail-m_2508378258237269445yiv5869272306y=
dpfeed99a8yahoo-style-wrap" style=3D"font-family:&quot;Helvetica Neue&quot;=
,Helvetica,Arial,sans-serif;font-size:13px"><br clear=3D"none">
                    </div>
                    <div class=3D"gmail-m_2508378258237269445yiv5869272306y=
dpfeed99a8yahoo-style-wrap" style=3D"font-family:&quot;Helvetica Neue&quot;=
,Helvetica,Arial,sans-serif;font-size:13px"><br clear=3D"none">
                    </div>
                    <div class=3D"gmail-m_2508378258237269445yiv5869272306y=
dpfeed99a8yahoo-style-wrap" style=3D"font-family:&quot;Helvetica Neue&quot;=
,Helvetica,Arial,sans-serif;font-size:13px" dir=3D"ltr">
                      <div class=3D"gmail-m_2508378258237269445yiv586927230=
6ydpfeed99a8yahoo-style-wrap" style=3D"text-align:left;color:rgb(0,0,0);tex=
t-transform:none;text-indent:0px;letter-spacing:normal;font-family:&quot;He=
lvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px;font-style:nor=
mal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0=
px;white-space:normal" dir=3D"ltr">However, I re-flashed the device with
                        &quot;=C2=A0<span><span style=3D"background-color:r=
gb(255,255,255);color:rgb(29,34,40);display:inline;float:none;font-family:&=
quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px;font-st=
yle:normal;font-variant:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-decoration:none;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px">uhd_image_loader
                            --args type=3Dx300</span></span>&quot; , power
                        cycled and after running uhd_usrp_probe=C2=A0</div>
                    </div>
                    <div class=3D"gmail-m_2508378258237269445yiv5869272306y=
dpfeed99a8yahoo-style-wrap" style=3D"font-family:&quot;Helvetica Neue&quot;=
,Helvetica,Arial,sans-serif;font-size:13px" dir=3D"ltr"> get
                      what&#39;s shown below. This doesn&#39;t seem to be t=
he
                      new image. It&#39;s showing RFNoC blocks from a
                      previous image that was installed prior to my use
                      and when I try to run a flowgraph I&#39;m getting the
                      same error as mentioned in my previous message.
                      Ideas??</div>
                  </div>
                </blockquote>
                These just look like the standard RFNOC blocks for
                X310.=C2=A0=C2=A0 Keep in mind that internally, for several
                releases, UHD uses RFNOC, even if your<br clear=3D"none">
                =C2=A0 code doesn&#39;t.<br clear=3D"none">
                <br clear=3D"none">
                What type of hardware is this running on?=C2=A0 What kind o=
f
                ethernet interface is connected to the X310?<br clear=3D"no=
ne">
                <br clear=3D"none">
                What sample rate are you using?<br clear=3D"none">
                <br clear=3D"none">
                What OS version?=C2=A0 Within a VM, or on raw hardware?
                <div class=3D"gmail-m_2508378258237269445yiv5869272306yqt73=
79963785" id=3D"gmail-m_2508378258237269445yiv5869272306yqtfd27642"><br cle=
ar=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000015681a059018c745--


--===============7636329632847069240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7636329632847069240==--

