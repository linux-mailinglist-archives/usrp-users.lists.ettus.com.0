Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAA342AB51
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 19:56:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 804DD3849FF
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 13:55:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="kxb9ZBW4";
	dkim-atps=neutral
Received: from sonic308-2.consmr.mail.bf2.yahoo.com (sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41])
	by mm2.emwd.com (Postfix) with ESMTPS id C3F5F384329
	for <usrp-users@lists.ettus.com>; Tue, 12 Oct 2021 13:55:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1634061312; bh=OJJOq0aoXnJ7hRYhYMJTWpSQkz4aLePOPWn1JnCKhTQ=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=kxb9ZBW4nn69Qq4Qb4pJfW8/UvuTJeG9LlMAM/5S0vZNExb8appw3523YpiY6jeWcRwLJc7g3ke/BXfC5xAaDkpBOBPOPXUj3u24pGPlilgLhfHiwyWWI7+rQUVnefGtEEd/xD18/nCAjBezJ7vdCld8TJq+Ag03pIZdqAxvLzotfKVETLRSS7QEfsaqnAck+h7zNqe9VaNb68wJEG7dX7lhONKDus9ELePXrJ9J6RIWBRALq5pdC1uyGY0fnU6ydBIhjnxNRumkEIQauAKiqVTRa09vDGyNSZKWNOfjeTseXVR5PwcX4mJWGuI7sDrnIjeUsJNd2OaFok1V5fhdSA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1634061312; bh=pn3AWDk0zmvUwRVJfwGlt6CyBP/nFvUauPZMrvRi2VQ=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=LtilChUwHDnqBAxHAPrJJaKgkaqlZVw77B6dXCmbZt6DqNFfqBSN4vf6Urf9aO4QEZC4XkSqDM1Hth8uqaNgWvnoPrZxbdxniAwW2KV8NqLf95IdBb/ryYTby8R6hpvW6eP1ohhnPnEhQapwGOrmdCn0nDegaszIuGWdYFxMuW4PLJaODtBLkHVqjAv0CG1GBdEMG4Wew6b4EBLFjjPgB0T720U+c2CniNMQ6hk5U7soe4EVBDtICYolXftPt6M1MDiu+2ER8NyanMjnWnOFXkVTTMIQHmA8eGyD/Ue1UFHegMbNyYQTpc4lDYZhk6kvWVEyaWS2dqbXQQgUCw1tbQ==
X-YMail-OSG: pIWfwDcVM1lerMlAg8mK2SwPq7iU7lDfl4eJKAPVUDcuXQ1__UiD6eE661q4AwP
 _0nJA5O.4v9l9r718Er7PgPvg.pyD8r_YliES5l_HDPI82VZNcGedyjoa8Mb_MvuXq_eycb5IItg
 lY22ZHdaVvugNnYAdsQ_b4r2FlAtVMqLL3RlAjqTBrPXmcZqDO52st2NyIrI8ydipO2Iha_4WMRh
 oG_RXJ8wlBJl7zcwP2QYoYHgd4BnvqP0nsedt.Au4Kke5GnWi_d1kKQ2S4vjUmrvQq.Gi.rpvB0V
 7xFsMOcNZPi7YowBnn6lhPumPs427E0QH2M6Dw7EhmMH5nqMkiG0Z0zkaixkgFEcMshHh3ZPPOab
 pbZDFApvb0_.3dvZMAJKgedW8H37KGA1YbC.yfmEwPtVrAFYQMdbuaOfsssya7b0BI_rs1uYK1vD
 6wM3tkw7FJRT7f9HEEmWvMwJ.2EMlY_U_6vZ9q1If6N13PTf_9HRAQeec0bSE5Czx9JMjtxisx68
 48vKJqtz_9Tg74KGYrsP5chdE6.m5NLZvSfwpbdg370b27YZjnUHcNff0GSnLYFSCydehbw9I7je
 HzHuS3_Paq2TKPOIll5iVjwMgHk9OSX4SKMejhyW8hDMQ4eGi0sOZbQM7zTK8IrS5y8qon8ah0a4
 Ob4KsH1ACqdoyskmz0sg6OTbvbMm9AG_LHmNHiaXeYCVFzOZvT4N1gGlgA5sOirjzjc6dC48iU_c
 QvGktRFlAiWs93u3Xc152QDout6UdjA64H5sqQFM0VLxbjghoqULaDnd1b8UFq3zWR9nDWSHeJGt
 5_tDS1SrxWYJomwsS4ugr_GrpNj4vBc3W2btalFHvocXqrBVn35YcSWd_1wfGrvj4UHTxAMMtPU3
 ft2Ktxa60a4cNjWmqEV9qLo83hac_kri4u_R2roM5lMa_2kR9Z6HW6rgO_MuGlhMoHJx4bbsfDzy
 inBpt.WtM6u0uQ7ygJV7xYD_ST3jOkPdBN8saE.XGZ_uamaRyNQLJQYT3gEhfQk7k5K.hXoQztPP
 iptcASdThBqtxegPfcq4BBaBxbv01K5plr7Mr9uNFMEEA9vYtcxvIv1c0j6xGF3P22kY90uvkH9j
 0o91NhORcgQuSe.XZLRvKJNq0WL1Xtm5LM3FbobKeOqm7_2O51GBkvCO_8c6814lGln8ZS6zrutS
 rocaY_rUUWi3wk_Lg8ws.WQ1pUNHoo.lq3iZXxz7rdpmGxg2Asfvvfkd3J0m5CRW6todgO0FiuAq
 05K53QnJwoCIRDNKX9zIoR8HaTkBtkWON3UtyG9znuo89Xl_YTDyK3.puW.53mDRM2F2rt9E8jSO
 iy8KtNjqMP_Yvu7WHZ28NkhUez5Ddw.qPQoDN1SZS0p06h1phRqqL6OAR.Nhtit.k0j5tQsUptJR
 iob3WAYn..DQUZC_qO.WuhQTYfrDMR833zK0v7J.U_i48SiwSC6ufmOyIYMM35x2IJN1NFv99zsf
 Y2rymEPjO70TNbpiPpb2RSl6b3MaP1FlOpd0sTz1gbRcjwdt6oYD6xn.7KN_4KM.JZ8KZ0TpTgZ3
 Eb8mkZ6wxfTfx7F6obGjNrRw6vvPFq.7EDXcXXP1oH2y8gLq4lAQcPjOCAK0X5GThp92FVpCDM1X
 qxsK3uO43lNW1xcCfL0pezDqOmHvz68c19DAAGpSfErF4QJ.ru2bMeuKpVift6AH8G.drkrwdone
 niacTbqtRC2Fj5wrNpV26XBdPeE8UlX0xpy6QGM8dWOUlqg83au03ro6Xp3gKHqo.IG2F7D5cqOS
 U.4nqdPr2Zo8DggQsyAgJB.TO34bKTB5ce7vxmcjCMOU8qltcX.DS0y3z8aaii9hVDuYa2N3yAjR
 a_YsuzttLOQx6enYfVF2dGJt5bQfySs26i4B2vACe91bWRF7U5OvCp2TbqgWWTJYhiPlrAuBuRv4
 trMi9h08DA4J5hOCqf9UdY5JkuhRDEH04ixgS.lHAu7GGzQw_O1J0UdTmYADXNc5uBqIWGQ6O7dI
 YOqOD0LYZFwP8jX_pqvTHPAvZgnH0UXswCbx1qxmI0O5B_3tcEFG4REXU3Y2V0J6pjHqQyE_Edc_
 1nVK9RSm6eHgMUDlXjQkolHj_1MV8wmUcZEtDzcTeq7ykflo7s_YPz6k79OB6ROt0tvW9xK26Ga0
 bD_j27gDRrnhRlR5QEhl5csFg.k0571RvkTPvhrIQ4mKPsLEsGn60fB0U6RSY50LYz6kkAepiV3V
 .dLR.bOPyNwxQNZwA5_fyaMw3fNO3q35FddkU
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Tue, 12 Oct 2021 17:55:12 +0000
Date: Tue, 12 Oct 2021 17:55:10 +0000 (UTC)
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID: <279084312.1067344.1634061310152@mail.yahoo.com>
In-Reply-To: <85AEED2D-0B70-47B9-9DE5-696466F4A310@gmail.com>
References: <1552911735.1055946.1634056580695@mail.yahoo.com> <85AEED2D-0B70-47B9-9DE5-696466F4A310@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19116 YMailNorrin
Message-ID-Hash: SSNAQGGMCXHMCSQ45D6LS5TTQMO3SL3M
X-Message-ID-Hash: SSNAQGGMCXHMCSQ45D6LS5TTQMO3SL3M
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Philip Balister <philip@balister.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SSNAQGGMCXHMCSQ45D6LS5TTQMO3SL3M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5348133384766986478=="

--===============5348133384766986478==
Content-Type: multipart/alternative;
	boundary="----=_Part_1067343_1354052596.1634061310148"

------=_Part_1067343_1354052596.1634061310148
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 I/O Expander(TCA6408A) on the daughterboard.

    On Tuesday, October 12, 2021, 01:50:19 PM EDT, Marcus D Leech <patchvon=
braun@gmail.com> wrote: =20
=20
 Which i2C device are you trying to access?

Sent from my iPhone

On Oct 12, 2021, at 12:36 PM, Tellrell White <t_whit_87@yahoo.com> wrote:



=EF=BB=BF=20
Philip I'm highlty doubtful that its a permissions issue. After moving the =
app over to the n310, I enable it for all users to run it permissions wise.=
 However, the only "user" is root on the n310.=20

Martin I followed your instruction to disable usrp-hwd and then reboot and =
after rebooting and running "systemctl status usrp-hwd" i get "Active:inact=
ive(dead)" which leads me to believe that upon rebooting the MPM isn't runn=
ing however, when re-running my app I get the same error. Is it anyway that=
 MPM may still be holding these resources or is there something else going =
on here?=20

    On Thursday, October 7, 2021, 03:02:09 AM EDT, Martin Braun <martin.bra=
un@ettus.com> wrote: =20
=20
 Just to make sure we're talking abou the same things: To disable MPM, you =
run
=C2=A0=C2=A0=C2=A0 systemctl stop usrp-hwd
You can also run
=C2=A0=C2=A0=C2=A0 systemctl disable usrp-hwd
which does not stop MPM, but will avoid it being started on reboot.
It seems you know what you're doing, but for the record: when MPM is not ru=
nning, your USRP is a heavy piece of metal running Linux (at least, until y=
ou've ported OpenCPI or some other custom software). That's why we have des=
igned MPM to keep running at all times, even when some kind of fatal error =
occurred, so UHD can at least see some kind of device. We use systemd watch=
dogs to reboot it when it's gone.

--M

On Wed, Oct 6, 2021 at 11:45 PM Marcus D. Leech <patchvonbraun@gmail.com> w=
rote:

  On 2021-10-06 5:17 p.m., Tellrell White wrote:
 =20
 =20
  So, just to clarify, if its "required" is there no way of disabling it or=
 removing??=20
 =20
   The project I'm working on is based on using the Open CPI framework, whi=
ch is basically an opensource framework for developing and executing compon=
ent based apps on embedded platforms. With that being said, my task isn't t=
ightly bound to using UHD, therefore, I would like to disable or remove MPM=
 for a custom application.=C2=A0=20
   =20
  =20
 After killing MPM, you can use "ps" to check to see if it has come back, a=
nd if it hasn't and "something else" still owns the I2C devices, you can us=
e
 =C2=A0 "lsof" to see which processes have which devices open.=C2=A0 I thin=
k the i2C devices will manifest in the /dev filesystem.=C2=A0 For example, =
on my *laptop*, there's:
=20
 rw------- 1 root root 89, 0 Sep 28 18:14 /dev/i2c-0
 crw------- 1 root root 89, 1 Sep 28 18:14 /dev/i2c-1
 crw------- 1 root root 89, 2 Sep 28 18:14 /dev/i2c-2
 crw------- 1 root root 89, 3 Sep 28 18:14 /dev/i2c-3
 crw------- 1 root root 89, 4 Sep 28 18:14 /dev/i2c-4
 crw------- 1 root root 89, 5 Sep 28 18:14 /dev/i2c-5
=20
=20
=20
     =20
=20
=20
      =20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
 =20
------=_Part_1067343_1354052596.1634061310148
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpe204cb95yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">I/O Expander(TCA6408A) on th=
e daughterboard.<br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_4560287307" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, October 12, 2021, 01:50:19 PM EDT, Marcus D=
 Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv7689558549"><div>Which i2C device are yo=
u trying to access?<br clear=3D"none"><br clear=3D"none"><div dir=3D"ltr">S=
ent from my iPhone</div><div dir=3D"ltr"><div class=3D"yiv7689558549yqt9321=
152663" id=3D"yiv7689558549yqtfd91387"><br clear=3D"none"><blockquote type=
=3D"cite">On Oct 12, 2021, at 12:36 PM, Tellrell White &lt;t_whit_87@yahoo.=
com&gt; wrote:<br clear=3D"none"><br clear=3D"none"></blockquote></div></di=
v><div class=3D"yiv7689558549yqt9321152663" id=3D"yiv7689558549yqtfd74427">=
<blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div class=3D"yiv768955=
8549ydp7e1eb3f9yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helve=
tica, Arial, sans-serif;font-size:13px;"><div></div>
        <div><br clear=3D"none"></div><div dir=3D"ltr">Philip I'm highlty d=
oubtful that its a permissions issue. After moving the app over to the n310=
, I enable it for all users to run it permissions wise. However, the only "=
user" is root on the n310. <br clear=3D"none"></div><div dir=3D"ltr"><br cl=
ear=3D"none"></div><div dir=3D"ltr">Martin I followed your instruction to d=
isable usrp-hwd and then reboot and after rebooting and running "systemctl =
status usrp-hwd" i get "Active:inactive(dead)" which leads me to believe th=
at upon rebooting the MPM isn't running however, when re-running my app I g=
et the same error. Is it anyway that MPM may still be holding these resourc=
es or is there something else going on here? <br clear=3D"none"></div><div =
dir=3D"ltr"><br clear=3D"none"></div>
       =20
        </div><div class=3D"yiv7689558549yahoo_quoted" id=3D"yiv7689558549y=
ahoo_quoted_4370215868">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Thursday, October 7, 2021, 03:02:09 AM EDT, Martin B=
raun &lt;martin.braun@ettus.com&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv7689558549"><div><div dir=3D"ltr"><div>J=
ust to make sure we're talking abou the same things: To disable MPM, you ru=
n</div><div><br clear=3D"none"></div><div>&nbsp;&nbsp;&nbsp; systemctl stop=
 usrp-hwd</div><div><br clear=3D"none"></div><div>You can also run</div><di=
v><br clear=3D"none"></div><div>&nbsp;&nbsp;&nbsp; systemctl disable usrp-h=
wd</div><div><br clear=3D"none"></div><div>which does not stop MPM, but wil=
l avoid it being started on reboot.</div><div><br clear=3D"none"></div><div=
>It seems you know what you're doing, but for the record: when MPM is not r=
unning, your USRP is a heavy piece of metal running Linux (at least, until =
you've ported OpenCPI or some other custom software). That's why we have de=
signed MPM to keep running at all times, even when some kind of fatal error=
 occurred, so UHD can at least see some kind of device. We use systemd watc=
hdogs to reboot it when it's gone.<br clear=3D"none"></div><div><br clear=
=3D"none"></div><div>--M<br clear=3D"none"></div></div><br clear=3D"none"><=
div class=3D"yiv7689558549gmail_quote"><div class=3D"yiv7689558549yqt310234=
0049" id=3D"yiv7689558549yqt65401"><div class=3D"yiv7689558549gmail_attr" d=
ir=3D"ltr">On Wed, Oct 6, 2021 at 11:45 PM Marcus D. Leech &lt;<a rel=3D"no=
follow noopener noreferrer" shape=3D"rect" ymailto=3D"mailto:patchvonbraun@=
gmail.com" target=3D"_blank" href=3D"mailto:patchvonbraun@gmail.com">patchv=
onbraun@gmail.com</a>&gt; wrote:<br clear=3D"none"></div><blockquote class=
=3D"yiv7689558549gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex;">
 =20
   =20
 =20
  <div>
    <div>On 2021-10-06 5:17 p.m., Tellrell White
      wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-seri=
f;font-size:13px;">
        <div><br clear=3D"none">
        </div>
        <div dir=3D"ltr">So, just to clarify, if its
          "required" is there no way of disabling it or removing?? <br clea=
r=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr"> The project I'm working on
          is based on using the Open CPI framework, which is basically
          an opensource framework for developing and executing component
          based apps on embedded platforms. With that being said, my
          task isn't tightly bound to using UHD, therefore, I would like
          to disable or remove MPM for a custom application.&nbsp; <br clea=
r=3D"none">
        </div>
      </div>
      <div id=3D"yiv7689558549gmail-m_-2172980616365166026yahoo_quoted_4426=
225589">
        <div style=3D"font-family:Helvetica, Arial, sans-serif;font-size:13=
px;color:rgb(38,40,42);"><br clear=3D"none">
        </div>
      </div>
    </blockquote>
    After killing MPM, you can use "ps" to check to see if it has come
    back, and if it hasn't and "something else" still owns the I2C
    devices, you can use<br clear=3D"none">
    &nbsp; "lsof" to see which processes have which devices open.&nbsp; I t=
hink
    the i2C devices will manifest in the /dev filesystem.&nbsp; For example=
,
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
      <div id=3D"yiv7689558549gmail-m_-2172980616365166026yahoo_quoted_4426=
225589">
        <div style=3D"font-family:Helvetica, Arial, sans-serif;font-size:13=
px;color:rgb(38,40,42);">
          <div>
            <div id=3D"yiv7689558549gmail-m_-2172980616365166026yiv53518960=
31">
              <div>
                <div id=3D"yiv7689558549gmail-m_-2172980616365166026yiv5351=
896031yqtfd56378"><br clear=3D"none">
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
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D=
"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br cl=
ear=3D"none">
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" sha=
pe=3D"rect" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_=
blank" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@li=
sts.ettus.com</a><br clear=3D"none">
</blockquote></div></div>
</div></div><div class=3D"yiv7689558549yqt3102340049" id=3D"yiv7689558549yq=
t35643">_______________________________________________<br clear=3D"none">U=
SRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D"=
rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br cl=
ear=3D"none">To unsubscribe send an email to <a rel=3D"nofollow noopener no=
referrer" shape=3D"rect" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com=
" target=3D"_blank" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-u=
sers-leave@lists.ettus.com</a><br clear=3D"none"></div></div>
            </div>
        </div></div></blockquote></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_1067343_1354052596.1634061310148--

--===============5348133384766986478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5348133384766986478==--
