Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC1442AB26
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 19:50:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42E05383D34
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 13:50:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pa9Bt4qT";
	dkim-atps=neutral
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id DC7A8380B5E
	for <USRP-users@lists.ettus.com>; Tue, 12 Oct 2021 13:50:12 -0400 (EDT)
Received: by mail-qv1-f52.google.com with SMTP id m13so183905qvk.1
        for <USRP-users@lists.ettus.com>; Tue, 12 Oct 2021 10:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=ow4GtHtWQyoby7mxkXXFrYCepZiWJR6hCkpg/kwmCt8=;
        b=pa9Bt4qT4MD5S8nlbpfVdx56XQRDI3NFlV8N/BDHpAUx1LBvNGiWszTEx6ZPBECeVg
         UzWiIJ1Ty8jzFo1+E0ZgqqjWcPR6CJ2C3EBqxg4NAZjM3FsPv3A4uG1UVv+goHNBOj30
         lXdLw14yeXmY6k7N5IVRI2XyBoBLhXd2SjCWrqOCc61z0aV0AthnWHlr/PMaFnJgus/4
         Lajzmemq7YcL1ofvdt9AQ3uCIHLU0uTfwWel6WYPkp9TeB2yR1uZsminSCOFeukJ3wb/
         3vxLiOczIG9xfoWShrwXn4RrLWcBlXrYihQd5O3K7ZPgtEDvPIYw3RhdrHbNjtinjgI8
         +CRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=ow4GtHtWQyoby7mxkXXFrYCepZiWJR6hCkpg/kwmCt8=;
        b=fSFKjiVAXCQTvvqbzv7RBkpJPl24v/RFxwQCPeiN3HzwbcG2mxz3RpIHG2HtSxCMpS
         uJILKN8suZdJ65uXrmAxkOgi7RhmvxH1PAxchWnKhzJgqTKkPiDdb42WjuaBOCHH0CqW
         LJtglDvMcPVD2AslbQCvXSIAEnkodB7xZnAlJWuSCPZ7EQIxloTWpP4yOMVeGDCMZfWQ
         sJB10Dag9NGrhNWaNTDEI8Eru44slMXK+Zm/6ayB0C2uJScHqbsbQyrhQkL6sIszsI2O
         saYAU7z1842l0Wp8f3TiFGndC3f8yIy3wrLVpGgRNGf+pbY8EuU6CELG0nq9EIlhmwbS
         Q2YA==
X-Gm-Message-State: AOAM5309NV9MCY9OpS0ntwEdWEnpT5+loPMxHc1d7kKowdEnSWwZQDg6
	W7CgapACDv9nrco32Lf4tjxsfqaXots=
X-Google-Smtp-Source: ABdhPJy2A2QNI0iOWrOJvVUKXe8kt1W7feveg0reWTuZ4PqsSrOM0QqzOQ2sRjyl4LVZGRoM2y4URg==
X-Received: by 2002:a0c:cd86:: with SMTP id v6mr8673295qvm.22.1634061012269;
        Tue, 12 Oct 2021 10:50:12 -0700 (PDT)
Received: from smtpclient.apple ([174.93.0.206])
        by smtp.gmail.com with ESMTPSA id l4sm759116qke.107.2021.10.12.10.50.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Oct 2021 10:50:11 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 12 Oct 2021 13:50:06 -0400
Message-Id: <85AEED2D-0B70-47B9-9DE5-696466F4A310@gmail.com>
References: <1552911735.1055946.1634056580695@mail.yahoo.com>
In-Reply-To: <1552911735.1055946.1634056580695@mail.yahoo.com>
To: Tellrell White <t_whit_87@yahoo.com>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: GJD6TVKFTRPIT5RJ2P53QSRPUXVROYU6
X-Message-ID-Hash: GJD6TVKFTRPIT5RJ2P53QSRPUXVROYU6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Philip Balister <philip@balister.org>, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GJD6TVKFTRPIT5RJ2P53QSRPUXVROYU6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6805863413018306265=="


--===============6805863413018306265==
Content-Type: multipart/alternative; boundary=Apple-Mail-7D08B8D7-F9B5-4648-A82B-35A86FA9D4FE
Content-Transfer-Encoding: 7bit


--Apple-Mail-7D08B8D7-F9B5-4648-A82B-35A86FA9D4FE
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Which i2C device are you trying to access?

Sent from my iPhone

> On Oct 12, 2021, at 12:36 PM, Tellrell White <t_whit_87@yahoo.com> wrote:
>=20
> =EF=BB=BF
>=20
> Philip I'm highlty doubtful that its a permissions issue. After moving the=
 app over to the n310, I enable it for all users to run it permissions wise.=
 However, the only "user" is root on the n310.=20
>=20
> Martin I followed your instruction to disable usrp-hwd and then reboot and=
 after rebooting and running "systemctl status usrp-hwd" i get "Active:inact=
ive(dead)" which leads me to believe that upon rebooting the MPM isn't runni=
ng however, when re-running my app I get the same error. Is it anyway that M=
PM may still be holding these resources or is there something else going on h=
ere?=20
>=20
> On Thursday, October 7, 2021, 03:02:09 AM EDT, Martin Braun <martin.braun@=
ettus.com> wrote:
>=20
>=20
> Just to make sure we're talking abou the same things: To disable MPM, you r=
un
>=20
>     systemctl stop usrp-hwd
>=20
> You can also run
>=20
>     systemctl disable usrp-hwd
>=20
> which does not stop MPM, but will avoid it being started on reboot.
>=20
> It seems you know what you're doing, but for the record: when MPM is not r=
unning, your USRP is a heavy piece of metal running Linux (at least, until y=
ou've ported OpenCPI or some other custom software). That's why we have desi=
gned MPM to keep running at all times, even when some kind of fatal error oc=
curred, so UHD can at least see some kind of device. We use systemd watchdog=
s to reboot it when it's gone.
>=20
> --M
>=20
> On Wed, Oct 6, 2021 at 11:45 PM Marcus D. Leech <patchvonbraun@gmail.com> w=
rote:
> On 2021-10-06 5:17 p.m., Tellrell White wrote:
>>=20
>> So, just to clarify, if its "required" is there no way of disabling it or=
 removing??=20
>>=20
>> The project I'm working on is based on using the Open CPI framework, whic=
h is basically an opensource framework for developing and executing componen=
t based apps on embedded platforms. With that being said, my task isn't tigh=
tly bound to using UHD, therefore, I would like to disable or remove MPM for=
 a custom application. =20
>>=20
> After killing MPM, you can use "ps" to check to see if it has come back, a=
nd if it hasn't and "something else" still owns the I2C devices, you can use=

>   "lsof" to see which processes have which devices open.  I think the i2C d=
evices will manifest in the /dev filesystem.  For example, on my *laptop*, t=
here's:
>=20
> rw------- 1 root root 89, 0 Sep 28 18:14 /dev/i2c-0
> crw------- 1 root root 89, 1 Sep 28 18:14 /dev/i2c-1
> crw------- 1 root root 89, 2 Sep 28 18:14 /dev/i2c-2
> crw------- 1 root root 89, 3 Sep 28 18:14 /dev/i2c-3
> crw------- 1 root root 89, 4 Sep 28 18:14 /dev/i2c-4
> crw------- 1 root root 89, 5 Sep 28 18:14 /dev/i2c-5
>=20
>=20
>>=20
>>=20
>>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-7D08B8D7-F9B5-4648-A82B-35A86FA9D4FE
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Which i2C device are you trying to access?<=
br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><block=
quote type=3D"cite">On Oct 12, 2021, at 12:36 PM, Tellrell White &lt;t_whit_=
87@yahoo.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite">=
<div dir=3D"ltr">=EF=BB=BF<div class=3D"ydp7e1eb3f9yahoo-style-wrap" style=3D=
"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><=
div></div>
        <div><br></div><div dir=3D"ltr" data-setdir=3D"false">Philip I'm hig=
hlty doubtful that its a permissions issue. After moving the app over to the=
 n310, I enable it for all users to run it permissions wise. However, the on=
ly "user" is root on the n310. <br></div><div dir=3D"ltr" data-setdir=3D"fal=
se"><br></div><div dir=3D"ltr" data-setdir=3D"false">Martin I followed your i=
nstruction to disable usrp-hwd and then reboot and after rebooting and runni=
ng "systemctl status usrp-hwd" i get "Active:inactive(dead)" which leads me t=
o believe that upon rebooting the MPM isn't running however, when re-running=
 my app I get the same error. Is it anyway that MPM may still be holding the=
se resources or is there something else going on here? <br></div><div dir=3D=
"ltr" data-setdir=3D"false"><br></div>
       =20
        </div><div id=3D"yahoo_quoted_4370215868" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sa=
ns-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Thursday, October 7, 2021, 03:02:09 AM EDT, Martin Br=
aun &lt;martin.braun@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv6994985167"><div><div dir=3D"ltr"><div>Ju=
st to make sure we're talking abou the same things: To disable MPM, you run<=
/div><div><br clear=3D"none"></div><div>&nbsp;&nbsp;&nbsp; systemctl stop us=
rp-hwd</div><div><br clear=3D"none"></div><div>You can also run</div><div><b=
r clear=3D"none"></div><div>&nbsp;&nbsp;&nbsp; systemctl disable usrp-hwd</d=
iv><div><br clear=3D"none"></div><div>which does not stop MPM, but will avoi=
d it being started on reboot.</div><div><br clear=3D"none"></div><div>It see=
ms you know what you're doing, but for the record: when MPM is not running, y=
our USRP is a heavy piece of metal running Linux (at least, until you've por=
ted OpenCPI or some other custom software). That's why we have designed MPM t=
o keep running at all times, even when some kind of fatal error occurred, so=
 UHD can at least see some kind of device. We use systemd watchdogs to reboo=
t it when it's gone.<br clear=3D"none"></div><div><br clear=3D"none"></div><=
div>--M<br clear=3D"none"></div></div><br clear=3D"none"><div class=3D"yiv69=
94985167gmail_quote"><div class=3D"yiv6994985167yqt3102340049" id=3D"yiv6994=
985167yqt65401"><div class=3D"yiv6994985167gmail_attr" dir=3D"ltr">On Wed, O=
ct 6, 2021 at 11:45 PM Marcus D. Leech &lt;<a rel=3D"nofollow noopener noref=
errer" shape=3D"rect" ymailto=3D"mailto:patchvonbraun@gmail.com" target=3D"_=
blank" href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&g=
t; wrote:<br clear=3D"none"></div><blockquote class=3D"yiv6994985167gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex;">
 =20
   =20
 =20
  <div>
    <div>On 2021-10-06 5:17 p.m., Tellrell White
      wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif=
;font-size:13px;">
        <div><br clear=3D"none">
        </div>
        <div dir=3D"ltr">So, just to clarify, if its
          "required" is there no way of disabling it or removing?? <br clear=
=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr"> The project I'm working on
          is based on using the Open CPI framework, which is basically
          an opensource framework for developing and executing component
          based apps on embedded platforms. With that being said, my
          task isn't tightly bound to using UHD, therefore, I would like
          to disable or remove MPM for a custom application.&nbsp; <br clear=
=3D"none">
        </div>
      </div>
      <div id=3D"yiv6994985167gmail-m_-2172980616365166026yahoo_quoted_44262=
25589">
        <div style=3D"font-family:Helvetica, Arial, sans-serif;font-size:13p=
x;color:rgb(38,40,42);"><br clear=3D"none">
        </div>
      </div>
    </blockquote>
    After killing MPM, you can use "ps" to check to see if it has come
    back, and if it hasn't and "something else" still owns the I2C
    devices, you can use<br clear=3D"none">
    &nbsp; "lsof" to see which processes have which devices open.&nbsp; I th=
ink
    the i2C devices will manifest in the /dev filesystem.&nbsp; For example,=

    on my *laptop*, there's:<br clear=3D"none">
    <br clear=3D"none">
    rw------- 1 root root 89, 0 Sep 28 18:14 /dev/i2c-0<br clear=3D"none">
    crw------- 1 root root 89, 1 Sep 28 18:14 /dev/i2c-1<br clear=3D"none">
    crw------- 1 root root 89, 2 Sep 28 18:14 /dev/i2c-2<br clear=3D"none">
    crw------- 1 root root 89, 3 Sep 28 18:14 /dev/i2c-3<br clear=3D"none">
    crw------- 1 root root 89, 4 Sep 28 18:14 /dev/i2c-4<br clear=3D"none">
    crw------- 1 root root 89, 5 Sep 28 18:14 /dev/i2c-5<br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div id=3D"yiv6994985167gmail-m_-2172980616365166026yahoo_quoted_44262=
25589">
        <div style=3D"font-family:Helvetica, Arial, sans-serif;font-size:13p=
x;color:rgb(38,40,42);">
          <div>
            <div id=3D"yiv6994985167gmail-m_-2172980616365166026yiv535189603=
1">
              <div>
                <div id=3D"yiv6994985167gmail-m_-2172980616365166026yiv53518=
96031yqtfd56378"><br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br clear=3D"none">
  </div>

_______________________________________________<br clear=3D"none">
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D"=
rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br clear=3D=
"none">
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" shap=
e=3D"rect" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_bl=
ank" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists=
.ettus.com</a><br clear=3D"none">
</blockquote></div></div>
</div></div><div class=3D"yqt3102340049" id=3D"yqt35643">___________________=
____________________________<br clear=3D"none">USRP-users mailing list -- <a=
 shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br clear=3D"none=
">To unsubscribe send an email to <a shape=3D"rect" ymailto=3D"mailto:usrp-u=
sers-leave@lists.ettus.com" href=3D"mailto:usrp-users-leave@lists.ettus.com"=
>usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div>
            </div>
        </div></div></blockquote></body></html>=

--Apple-Mail-7D08B8D7-F9B5-4648-A82B-35A86FA9D4FE--

--===============6805863413018306265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6805863413018306265==--
