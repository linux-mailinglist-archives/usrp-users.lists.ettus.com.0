Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 992769512D
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2019 00:53:40 +0200 (CEST)
Received: from [::1] (port=40088 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hzqWv-0005UJ-Bm; Mon, 19 Aug 2019 18:53:37 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:38382)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1hzqWq-0005OI-QK
 for usrp-users@lists.ettus.com; Mon, 19 Aug 2019 18:53:32 -0400
Received: by mail-oi1-f171.google.com with SMTP id p124so2626654oig.5
 for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2019 15:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4eoTYNbM+Cyd+QygQ048iJvytTlYMmc0hD7gWaK1pDg=;
 b=HdapU7Q0xn+awR3HypjraQnpx+pN57EByF6CjPg/WuwsDys4NVIFJsuSNLLXEWZPjD
 BimpzL4CeLluX4WmY5TGR6woxSmNOCsH3trKjYAJViXDNwVdMTmmPk1ftGSOalvCns3K
 RExT/q18rVWzi5/G4QgbA6Z14XWQU9jjmvXZIlO+Ft3NRa+NLXj3kjeCK/yVIHiftfIb
 JXYp/cDcQc/kQyHLZU+6DTRONP466u6cHvANOcaiLq/TJ3Pc9cHANrVRM4rBNzUrpA+I
 UNSHA2g+GLzkWzm8v6C1o+cBh240vG1mV9Nim4ESYA4MLtKfQMg1V7m5TfHfT8x1PZqF
 yn1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4eoTYNbM+Cyd+QygQ048iJvytTlYMmc0hD7gWaK1pDg=;
 b=DYzSj9ag5P9jVVD2zjcH1pFVIpPJ+1Q6qD8ZchXXTcJ6WNOsC1jmqYb780NCg+mlU1
 WW5YzAIgg54m9809TBhuKs7k/uhAUHD6azh0W2psgfPc3/d1D/nLLS3RrTbLPiz+RNBQ
 ItnrmEn85FBxtp0azu7BemnDv2Fc+pcBlcTF0tGvB9LbquL+u9Sw9nccBgdl/pNnUrNS
 lu971soGtQZVQp2VS4Smd3c85SOcRFMlTKncoIHnH1n2hwoGScZgedtPd6gYyfXa2W5U
 EyKKNMuMB7OzAVXzoEkwzAwL0ztwh9oa64qeX7i2Bzpoi9fNkcFNmibriMiG4lP5d17e
 5itQ==
X-Gm-Message-State: APjAAAWM1Ee/fQ3wMvCH3JIFlEYAfdcNIhsx0/6RzcqF3nPm+Ck5upxp
 ET0TBFloQ5+IVpBMywH3NBsoCeZJfZtfS/bqIk+u5kxw
X-Google-Smtp-Source: APXvYqyB5XfNrFodCrtKlTP9jW6MF3vW2FLzZUsHxh0/5s3xt7BJAf+P/keNjAu2cmNnONWZ9beUJmxBh64YFRh134w=
X-Received: by 2002:aca:4797:: with SMTP id u145mr10263097oia.19.1566255171775; 
 Mon, 19 Aug 2019 15:52:51 -0700 (PDT)
MIME-Version: 1.0
References: <9d637be0-b80a-33cb-492d-0197e3ba6f5a@3db-labs.com>
 <5D576746.1010008@gmail.com>
 <e74ba0af-5c65-9b46-d3d7-360ab9d9dda5@3db-labs.com>
 <CACaXmv-XwDKP8ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com>
 <8a61a15c-6018-c30b-2cd3-15220e2ea1e6@3db-labs.com>
In-Reply-To: <8a61a15c-6018-c30b-2cd3-15220e2ea1e6@3db-labs.com>
Date: Mon, 19 Aug 2019 17:52:35 -0500
Message-ID: <CACaXmv87s56ttKCk4io8Z5nJq3DjyhzL6Qv1PgTMUvahmSad7A@mail.gmail.com>
To: Jason Roehm <jasonr@3db-labs.com>
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300, TwinRX,
 and v3.14.1.0
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2959430355853421548=="
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

--===============2959430355853421548==
Content-Type: multipart/alternative; boundary="0000000000002444840590803351"

--0000000000002444840590803351
Content-Type: text/plain; charset="UTF-8"

Hello Jason:

Thanks for all the detailed feedback!  No worries about not having a
stand-alone reproducing program at the moment.  Could you please try using
the head of the "UHD-3.14" branch?  We just tagged v3.14.1.1-rc1 with some
bug fixes, which we think should address the issue.  Please let me know
your results running with that, and we'll go from there.

--Neel Pandeya



On Mon, 19 Aug 2019 at 13:34, Jason Roehm via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
> On 8/19/19 12:34 PM, Neel Pandeya wrote:
>
> Hello Jason:
>
> I also would have expected UHD 3.14.1.0 to have resolved this issue.
>
> Would you be able to send me a stand-alone program that I can use to
> reproduce this problem?
>
> Also, I'm curious, do you have a GPSDO installed in your X300?
>
> --Neel Pandeya
>
> Neel,
>
> Also, if it helps, I had traced the problem down a bit further when I was
> originally debugging it last week. I found that the code in
> super_recv_packet_handler.hpp, which translates the packets from the device
> into samples and metadata that are passed to the UHD client, thought that
> the tick rate was 100 MHz (recv_packet_handler::_tick_rate was equal to
> 100e6). However, the X300 with a TwinRX installed must always use a master
> clock rate of 200 MHz per the documentation. So the effect was that the
> timestamps received in the packets from the X300 were ticking up at a rate
> of 200 MHz, but the code in recv_packet_handler believed that the tick rate
> was 100 MHz instead; hence the 2x real-time rate. I was not able to find
> out how that tick rate was actually getting to the recv_packet_handler,
> however.
>
> Jason
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002444840590803351
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Jason:</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">Thanks for all the detailed feedback!=C2=A0 N=
o worries about not having a stand-alone reproducing program at the moment.=
=C2=A0 Could you please try using the head of the &quot;UHD-3.14&quot; bran=
ch?=C2=A0 We just tagged v3.14.1.1-rc1 with some bug fixes, which we think =
should address the issue.=C2=A0 Please let me know your results running wit=
h that, and we&#39;ll go from there.</div><div class=3D"gmail_default" styl=
e=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif">--Neel Pandeya</div><div class=3D=
"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, 19 Aug 2019 at 13:34, Jason Roehm via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"gmail-m_-7750672368616954686moz-cite-prefix">On 8/19/19 1=
2:34 PM, Neel Pandeya
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif">Hello Jason:</div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif">I also would have
            expected UHD 3.14.1.0 to have resolved this issue.</div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif">Would you be able to
            send me a stand-alone program that I can use to reproduce
            this problem?<br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif">Also, I&#39;m curious, do
            you have a GPSDO installed in your X300?<br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif">--Neel Pandeya</div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Neel,</p>
    <p>Also, if it helps, I had traced the problem down a bit further
      when I was originally debugging it last week. I found that the
      code in super_recv_packet_handler.hpp, which translates the
      packets from the device into samples and metadata that are passed
      to the UHD client, thought that the tick rate was 100 MHz
      (recv_packet_handler::_tick_rate was equal to 100e6). However, the
      X300 with a TwinRX installed must always use a master clock rate
      of 200 MHz per the documentation. So the effect was that the
      timestamps received in the packets from the X300 were ticking up
      at a rate of 200 MHz, but the code in recv_packet_handler believed
      that the tick rate was 100 MHz instead; hence the 2x real-time
      rate. I was not able to find out how that tick rate was actually
      getting to the recv_packet_handler, however.</p>
    <p>Jason<br>
    </p>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000002444840590803351--


--===============2959430355853421548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2959430355853421548==--

