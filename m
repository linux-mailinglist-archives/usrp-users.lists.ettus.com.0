Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 259F41C200C
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 23:53:06 +0200 (CEST)
Received: from [::1] (port=60210 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUdaf-0005aH-13; Fri, 01 May 2020 17:53:01 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:33238)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jUdab-0005UT-Fu
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 17:52:57 -0400
Received: by mail-oi1-f172.google.com with SMTP id o24so1010709oic.0
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 14:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ycuxw14kL8G6kr5SkP7SAgnJmaobv3HQXbvXFsZL3H4=;
 b=Pagl6BooFA60B/OeEozbtc/F5MV3HcPkq4gw5ncuNsLwFBIdt5F6zhDH+G2K1GKiLX
 QMFKqOgzNg+JYXztlw6GI6x5x9CjGQhWmKjuhEPIhivfOlGT/wuPteUkvFhsx3FTEgDs
 sBYIQHd4WoJAmOtnT1XYrFxzgn1jotpShC5j945NrxETOydckS1eB9bQgk/mbqU1XFGU
 vX5x3OAfQnFg8HmHUZFZRFhzrYUTQQffSjmbspeejRI17pv4ieQlpwDZDtEM2j1CK9Qx
 rP3dRX9d/6yt9e0axiMbY42uPDYnz3v9Pgm3qPKJgpkW6XI8cCN2xIrZGSq1+BGs8mfs
 G/iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ycuxw14kL8G6kr5SkP7SAgnJmaobv3HQXbvXFsZL3H4=;
 b=N1zVS0s12rfoIzwdD76f5qmqkW+R1kfohGv7QHSV7EPdJh2HeHnhAYywlI76PpSGjz
 Zk/KyNLyawBUMnUTWPN7raeos4MJ3MeeVP3MGRMChMoz7rsAg7Db+jlM8040S6xPwIRW
 R/Qr2qTM+Tw26c3dp/VqlV7aWXezi0kHe4sqwCHUYhkGQc+7VgRMeAgQExBDUYelAatI
 ltankg+LKBVRwSH0ieKx6Frfq+OJitbQ0DDRn2jLWYdOhljer6wgZhDlb7Z/o1IRGoRT
 Svg1fFAkz+Z36j7QzTn5s6hdBtZNSR+turNa9RVyd9TLjULi68mxPH+J/cFFgD1R3kXJ
 beqg==
X-Gm-Message-State: AGi0PuY6z8JvdZ3qnu0r4gTfZSxgzSyZmlsiEwBZDA6/b7KFOrGEd63D
 FMHZJUP3W4WGeS5XhKm6pWAmao39ZBs89N/WVsv8Yw==
X-Google-Smtp-Source: APiQypJ+9bPx8JgIWzX/27pOcNZGRDvzbZcPkFblmR4DbiGZK9mMz0TH188MQ0rz7LFA3aeVeoUqGOFBF/tS2Tn3eho=
X-Received: by 2002:aca:518c:: with SMTP id f134mr1270644oib.33.1588369936588; 
 Fri, 01 May 2020 14:52:16 -0700 (PDT)
MIME-Version: 1.0
References: <BY5PR19MB339879DA30F3129CB923F7F4C6AB0@BY5PR19MB3398.namprd19.prod.outlook.com>
 <CAEXYVK6gX7EtOQYwCJw3YUEF-O3E3-Ug8KF+Eg9hHFAmrRMpXw@mail.gmail.com>
 <BY5PR19MB339830DC61596E09FB2FB24DC6AB0@BY5PR19MB3398.namprd19.prod.outlook.com>
 <5EAC67BD.7000105@gmail.com>
In-Reply-To: <5EAC67BD.7000105@gmail.com>
Date: Fri, 1 May 2020 17:52:05 -0400
Message-ID: <CAB__hTT9D+WmN2i3tv=Usm=QyTgsFM2wEHccJkt5V0cxP8YGmQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Setting up an X310 as a signal generator
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0548433867828578841=="
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

--===============0548433867828578841==
Content-Type: multipart/alternative; boundary="000000000000d7d8f305a49d31a6"

--000000000000d7d8f305a49d31a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

With an X310, the DRAM FIFO is included by default in the multi_usrp object
(at least for UHD 3.15 and earlier).  If you DON'T want it, you have to use
a startup arg to skip it (something like SKIP_DRAM=3D1).
Rob

On Fri, May 1, 2020 at 2:18 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 05/01/2020 01:35 PM, Jerrid Plymale via USRP-users wrote:
>
> Brian,
>
>
>
> Thank you for the quick response! I will try the DRAM FIFO and see if tha=
t
> works. As I am working from home at the moment I do not have access to a
> spectrum analyzer, Is there anyway I can use any of the QT GUI blocks in
> gnuradio to determine a rough estimate? I know that the values you set ar=
e
> just values and that you have to determine how they correspond to actual
> values, but is there a way to do that mathematically? Determining metrics
> for this project have definitely been a struggle me so far.
>
>
>
> Best Regards,
>
>
>
> Jerrid
>
> If you're using the multi_usrp interface via Gnu Radio, then the DRAM FIF=
O
> won't be directly visible to you.  What sample rate are you trying
>   to sustain?  Can you share your flow-graph with us?
>
> Underruns mean that your host CPU isn't "keeping up" with the sample-rate
> demand from the X310, and if that is an ongoing thing, then no
>   amount of buffering will help.
>
>
>
>
> *From:* Brian Padalino <bpadalino@gmail.com> <bpadalino@gmail.com>
> *Sent:* Friday, May 1, 2020 10:28 AM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> <jerrid.plymale@canyon-us.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Setting up an X310 as a signal generator
>
>
>
> On Fri, May 1, 2020 at 1:23 PM Jerrid Plymale via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello All,
>
>
>
> So I have been trying to set up a USRP X310 as a signal generator for
> about a week now, and I=E2=80=99m having some issues. Currently I am usin=
g
> gnuradio-companion to develop the functionality. I have three sets of
> signal sources that are of float type, creating the I and Q values that g=
et
> passed to a float to complex block. The output of the three float to
> complex blocks go to an add block, which then outputs to a USRP sink.
> Currently, the first problem is with underruns, I=E2=80=99m not getting a=
 lot of
> them however I am getting breaks in the signal when I pass it to a second
> USRP X310. What would be the best approach to make sure my signal is comi=
ng
> in strong to the second USRP? I am also having issues with increasing the
> power of the signal when it is received, is this mainly controlled by the
> gain value on the USRP source in gnuradio? What can I do to get my incomi=
ng
> signal to have more power?
>
>
>
> You can try placing a DRAM FIFO in your transmit flow graph as the first
> thing.  That should ensure some tens of milliseconds worth of buffering f=
or
> your signals and allow for some host jitter without underruns.
>
>
>
> Do you have an external spectrum analyzer or something that can tell you
> the power output of the first radio?
>
>
>
> The receivers should be able to be saturated by your transmitter, so
> there's definitely a gain issue somewhere.
>
>
>
> Brian
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d7d8f305a49d31a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>With an X310, the DRAM FIFO is included by default in=
 the multi_usrp object (at least for UHD 3.15 and earlier).=C2=A0 If you DO=
N&#39;T=C2=A0want it, you have to use a startup arg to skip it (something l=
ike SKIP_DRAM=3D1).=C2=A0=C2=A0</div><div>Rob</div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 1, 2020 at 2:18 PM=
 Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 05/01/2020 01:35 PM, Jerrid Plymale
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal">Brian,<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Thank you for the quick response! I will
          try the DRAM FIFO and see if that works. As I am working from
          home at the moment I do not have access to a spectrum
          analyzer, Is there anyway I can use any of the QT GUI blocks
          in gnuradio to determine a rough estimate? I know that the
          values you set are just values and that you have to determine
          how they correspond to actual values, but is there a way to do
          that mathematically? Determining metrics for this project have
          definitely been a struggle me so far.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Best Regards,<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Jerrid</p>
      </div>
    </blockquote>
    If you&#39;re using the multi_usrp interface via Gnu Radio, then the
    DRAM FIFO won&#39;t be directly visible to you.=C2=A0 What sample rate =
are
    you trying<br>
    =C2=A0 to sustain?=C2=A0 Can you share your flow-graph with us?<br>
    <br>
    Underruns mean that your host CPU isn&#39;t &quot;keeping up&quot; with=
 the
    sample-rate demand from the X310, and if that is an ongoing thing,
    then no<br>
    =C2=A0 amount of buffering will help.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <p class=3D"MsoNormal"><u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <div style=3D"border-right:none;border-bottom:none;border-left:none=
;border-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
          <p class=3D"MsoNormal"><b>From:</b> Brian Padalino
            <a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">&lt;bp=
adalino@gmail.com&gt;</a> <br>
            <b>Sent:</b> Friday, May 1, 2020 10:28 AM<br>
            <b>To:</b> Jerrid Plymale
            <a href=3D"mailto:jerrid.plymale@canyon-us.com" target=3D"_blan=
k">&lt;jerrid.plymale@canyon-us.com&gt;</a><br>
            <b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a><br>
            <b>Subject:</b> Re: [USRP-users] Setting up an X310 as a
            signal generator<u></u><u></u></p>
        </div>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <div>
          <div>
            <p class=3D"MsoNormal">On Fri, May 1, 2020 at 1:23 PM Jerrid
              Plymale via USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
              wrote:<u></u><u></u></p>
          </div>
          <div>
            <blockquote style=3D"border-top:none;border-right:none;border-b=
ottom:none;border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;m=
argin-left:4.8pt;margin-right:0in">
              <div>
                <div>
                  <p class=3D"MsoNormal">Hello
                    All,<u></u><u></u></p>
                  <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                  <p class=3D"MsoNormal">So
                    I have been trying to set up a USRP X310 as a signal
                    generator for about a week now, and I=E2=80=99m having =
some
                    issues. Currently I am using gnuradio-companion to
                    develop the functionality. I have three sets of
                    signal sources that are of float type, creating the
                    I and Q values that get passed to a float to complex
                    block. The output of the three float to complex
                    blocks go to an add block, which then outputs to a
                    USRP sink. Currently, the first problem is with
                    underruns, I=E2=80=99m not getting a lot of them howeve=
r I
                    am getting breaks in the signal when I pass it to a
                    second USRP X310. What would be the best approach to
                    make sure my signal is coming in strong to the
                    second USRP? I am also having issues with increasing
                    the power of the signal when it is received, is this
                    mainly controlled by the gain value on the USRP
                    source in gnuradio? What can I do to get my incoming
                    signal to have more power?<u></u><u></u></p>
                </div>
              </div>
            </blockquote>
            <div>
              <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal">You can try placing a DRAM FIFO in
                your transmit flow graph as the first thing.=C2=A0 That
                should ensure some tens of milliseconds worth of
                buffering for your signals and allow for some host
                jitter without underruns.<u></u><u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal">Do you have an external spectrum
                analyzer or something that can tell you the power output
                of the first radio?<u></u><u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal">The receivers should be able to be
                saturated by your transmitter, so there&#39;s definitely a
                gain issue somewhere.<u></u><u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal">Brian<u></u><u></u></p>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
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
</blockquote></div></div>

--000000000000d7d8f305a49d31a6--


--===============0548433867828578841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0548433867828578841==--

