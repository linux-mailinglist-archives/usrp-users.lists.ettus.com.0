Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B53178615
	for <lists+usrp-users@lfdr.de>; Wed,  4 Mar 2020 00:00:33 +0100 (CET)
Received: from [::1] (port=39872 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9GWe-0003zD-FF; Tue, 03 Mar 2020 18:00:32 -0500
Received: from mail-lj1-f173.google.com ([209.85.208.173]:34725)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter@ettus.com>)
 id 1j9GWa-0003rH-Hc
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 18:00:28 -0500
Received: by mail-lj1-f173.google.com with SMTP id x7so5455345ljc.1
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 15:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XTXX1GhcRuFSzK6F7Ve9uO01OobsejU8rbq7hvjJwiE=;
 b=F7Cc29122w8CEAvUy1+3FuGdpgwcSTQsSLl+JBqZ43ifimZwLPQRoAcAaqo3xah48v
 TpKkYOywaPd8NVDwOn3j1lPTyRHzntfn1q640Kmlhkv04fbGsMcbreJocBQISAtRUepu
 EbQrEEomLlFssUodt0LgVzpc9kyPhqvVp6Pf9IRsSXN1s5VQcFA93uxBkzIMIpWKVVhP
 JRECRzgRkxO0818chtmERFzkHR/Ccf9FPY+e99nMb2DJ10jTmtJqPRs9HvHBdfHoXNr+
 8GjyXY/I0RPyjzjZ8OSFBGasTPTnprBrPvCaIsw76eZLvDcVkl0V9X2SJKK2a2oSEoBB
 NTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XTXX1GhcRuFSzK6F7Ve9uO01OobsejU8rbq7hvjJwiE=;
 b=OGGYT6jfwskZJnXJuxvDcGTglFxY2HnIZWNy0EFHqx/f5EnmnsAtBVAerIHjStC6eq
 2zUk9AAkO+ueYmEegdUpOqVbb1PgLyhRhmfk7QXMwJbGHH0FBhihJyjtZBSU7+hB1QJQ
 XgW3DxRhE6/KXZmnXzWFCTFad/J11AEBFEP54IUnoG2LadV8VU6Z+l3v9Jsn4raZAY7K
 mVYqTqqLeo8n1a6gQM8TSYtOjYquUNVdlEb7n/KrxIvnOFb+KtZzVLR01uCIrz9W2Jcz
 NpcsCYstDEFuTc4kh8Cd0oWT8iQ7+Pk2QxYDX50zehKdysOpfxmuRF/684l3TCBJ/B4q
 vj2w==
X-Gm-Message-State: ANhLgQ1TacGYB/I5oL1ezjsNBJ7kvkT3Rvmq+P6cf+BlH1e82gebHJdJ
 84reYGqJTgrZK7W16sSsqNT2B1KQYrdzabozdtYXbVod
X-Google-Smtp-Source: ADFU+vtIpMIvF4TZA8vjvCt2yRKPn4WrZ6bmA7Gg6TNQi6Mb5Md0td2XPVuIsNUPpzRzOWPiewX4981bUZqVJAU3s+4=
X-Received: by 2002:a2e:5454:: with SMTP id y20mr124105ljd.23.1583276387328;
 Tue, 03 Mar 2020 14:59:47 -0800 (PST)
MIME-Version: 1.0
References: <49e170dd-3e0d-587a-0520-936fbe758b99@iteam.upv.es>
 <6a8529df-c323-db63-d55e-d1f5d22504ee@iteam.upv.es>
In-Reply-To: <6a8529df-c323-db63-d55e-d1f5d22504ee@iteam.upv.es>
Date: Tue, 3 Mar 2020 16:59:46 -0600
Message-ID: <CANf970Z3v1D0Yv-bsaZu2CzNmaQbU-3AUG-od5d1tfoqRsXJqQ@mail.gmail.com>
To: =?UTF-8?B?Qm9yamEgScOxZXN0YSBIZXJuw6FuZGV6?= <borieher@iteam.upv.es>
Subject: Re: [USRP-users] Synchronize USRP using Octoclock
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6588788862063419086=="
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

--===============6588788862063419086==
Content-Type: multipart/alternative; boundary="000000000000a5f463059ffb42fb"

--000000000000a5f463059ffb42fb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Borja,

Is this still on your radar? I know that there have been a handful of
timing fixes added to the 3.15-LTS branch of UHD that might be worth trying
out. It could also be an issue with the example - I'm not sure I've spent
much time with ./test_clock_synch, but I'd be interested in testing this
out if it's still an issue on the latest versions of UHD.

-Sam

On Mon, Feb 10, 2020 at 8:19 AM Borja I=C3=B1esta Hern=C3=A1ndez via USRP-u=
sers <
usrp-users@lists.ettus.com> wrote:

> Hey all,
>
> Running the
> https://github.com/Borjis131/USRP-tests/blob/master/test_clock_synch_b210=
.cpp
> example with two USRPs works. Even if I use get_time_now() instead of
> get_time_last_pps(). So I don't know why the example shipped with uhd
> doesn't work.
>
> Thanks, Borja.
> El 10/2/20 a las 13:44, Borja I=C3=B1esta Hern=C3=A1ndez via USRP-users e=
scribi=C3=B3:
>
> Hi all,
>
> I just set up an Octoclock-G using the guide and now I can ping my device=
.
> But checking the test_clock_sync example with my x310 USRP something seem=
s
> to be working bad. I run ./test_clock_synch --clock-args addr=3DCLOCK_ADD=
RESS
> --usrp-args serial=3DUSRP_SERIAL and every time it has a 1 second offset
> between the USRP and the Octoclock in all the comparisons. The clock in t=
he
> USRP is always one second delayed.
>
> And in the test_clock_synch example changing: *(*times)[mboard] =3D usrp-=
>*
> *get_time_now**(mboard)**.**get_full_secs**();*
>
> to: *(*times)[mboard] =3D usrp->**get_time_last_pps**(mboard).*
> *get_full_secs*
> *(); *
>
> Works every time.
>
> So, does anyone know why my USRP is one second delayed when I use
> get_time_now() even if its supossed to work? Can I assume that my USRP is
> synchronized to the Octoclock when im using get_time_last_pps()?
>
> For my tests I have used this modified version of test_clock_synch create=
d
> to work with two USRPs but only using it with one.
> https://github.com/Borjis131/USRP-tests/blob/master/test_clock_synch_b210=
.cpp
> the code is from Urban Hankansson thread
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2015-January/=
012227.html
>
> Thanks, Borja.
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a5f463059ffb42fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Borja,<br><br>Is this still on your radar? I know that=
 there have been a handful of timing fixes added to the 3.15-LTS branch of =
UHD that might be worth trying out. It could also be an issue with the exam=
ple - I&#39;m not sure I&#39;ve spent much time with ./test_clock_synch, bu=
t I&#39;d be interested in testing this out if it&#39;s still an issue on t=
he latest versions of UHD. <br><br>-Sam</div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 10, 2020 at 8:19 AM Borj=
a I=C3=B1esta Hern=C3=A1ndez via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>Hey all,</p>
    <p>Running the <a href=3D"https://github.com/Borjis131/USRP-tests/blob/=
master/test_clock_synch_b210.cpp" target=3D"_blank">https://github.com/Borj=
is131/USRP-tests/blob/master/test_clock_synch_b210.cpp</a>
      example with two USRPs works. Even if I use get_time_now() instead
      of get_time_last_pps(). So I don&#39;t know why the example shipped
      with uhd doesn&#39;t work.</p>
    <p>Thanks, Borja.<br>
    </p>
    <div>El 10/2/20 a las 13:44, Borja I=C3=B1esta
      Hern=C3=A1ndez via USRP-users escribi=C3=B3:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hi all,</p>
      <p>I just set up an Octoclock-G using the guide and now I can ping
        my device. But checking the test_clock_sync example with my x310
        USRP something seems to be working bad. I run ./test_clock_synch
        --clock-args addr=3DCLOCK_ADDRESS --usrp-args serial=3DUSRP_SERIAL
        and every time it has a 1 second offset between the USRP and the
        Octoclock in all the comparisons. The clock in the USRP is
        always one second delayed.<br>
      </p>
      <p>And in the test_clock_synch example changing: <b>(*times)[mboard]
          =3D usrp-&gt;</b><b><span>get_time_now</span></b><b>(mboard)</b><=
b>.</b><b><span>get_full_secs</span></b><b>();</b> <br>
      </p>
      <p>to: <b>(*times)[mboard] =3D usrp-&gt;</b><b><span>get_time_last_pp=
s</span></b><b>(mboard).</b><b><span>get_full_secs</span></b><b>(); <br>
        </b></p>
      <p>Works every time. <br>
      </p>
      <p>So, does anyone know why my USRP is one second delayed when I
        use get_time_now() even if its supossed to work? Can I assume
        that my USRP is synchronized to the Octoclock when im using
        get_time_last_pps()?</p>
      <p>For my tests I have used this modified version of
        test_clock_synch created to work with two USRPs but only using
        it with one.
        <a href=3D"https://github.com/Borjis131/USRP-tests/blob/master/test=
_clock_synch_b210.cpp" target=3D"_blank">https://github.com/Borjis131/USRP-=
tests/blob/master/test_clock_synch_b210.cpp</a>
        the code is from Urban Hankansson thread
        <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/2015-January/012227.html" target=3D"_blank">http://lists.ettus.com/pipe=
rmail/usrp-users_lists.ettus.com/2015-January/012227.html</a></p>
      <p>Thanks, Borja.<br>
      </p>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a5f463059ffb42fb--


--===============6588788862063419086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6588788862063419086==--

