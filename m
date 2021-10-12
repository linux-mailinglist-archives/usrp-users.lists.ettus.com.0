Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2F142ABC9
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 20:21:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F8FC384BCE
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 14:21:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="eemeYRx3";
	dkim-atps=neutral
Received: from sonic316-11.consmr.mail.bf2.yahoo.com (sonic316-11.consmr.mail.bf2.yahoo.com [74.6.130.121])
	by mm2.emwd.com (Postfix) with ESMTPS id 9262838493C
	for <usrp-users@lists.ettus.com>; Tue, 12 Oct 2021 14:20:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1634062839; bh=29+Jfwfwq+NU3ym17YIMXeLjBzkA9wl46+YOlFuGX8c=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=eemeYRx33fYq677S+Gi9hTbOWBnEuAghbSb3D6P19Kfcb57qwmfgQ8fUiqWaRXil0bfP/efBuSuvFlMYK3NsvvI803/DtmG4xgU/rWlhKzp3MtGgWmx2y7OsdVyXkA9Muhj9eTJ2HrdSFleFa1bugDa1fRu14trJgWGl7TKZblxekqOWNDiiWXseG/Nj+VL4MAqxFsNQtx+IHpNvosh7nAJnh/A6dgP7yVr23bDCiH22FBTYO8UQPJl1L4KNJagFb1/odvXN6n/K4rbM3QE47NtKJk10PqZACxuUdYbQxJaryJXBTTTd9v54WRkCnabr0IjGnRXx6fm0NXeunwTQKw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1634062839; bh=whajlbegXQ2gbZxzJ5fjYrpQW7Pv2bxkjX1oLg6m1Eu=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=BP3GmOKaBbkzYKnME5Gzln2zgR5q00BQuzLmXNlPATYb9MDjDs/ONaopvvmetdXnLvTIy+LCoOBFNchIDG3ScBwRNdfqH693nTz636XiEgrBVHzEsa9CaQkw3DhkQwGCnEZQ3LRPSYNPUhgjUaLiGUbd3kafhLof+oUiAkTdJi5U/+3Z8QiNZFCAsnaulevzMGGuiLHDlfa6QM7byRGCFTXKKO2vltIPmIfHWse5BUwCrjdpgupF9e/6/uw6r/ziRJo1NvKzfYhoMrhPgpV78F0kVDWFxHvr3itdxbSaQ67pqI2ydMWQB6N3SFW5zGV8czcQa9UD/FYa8Gb4EVKyMg==
X-YMail-OSG: eRvWb6cVM1mJnBLT2k0VpzO1P4c708wEKvRUJNyhHcNj6b9n4V17DQ72kyh2GMD
 9zUyftsGFO3WCnnJY9izfcQaatXMr4349PpkrC8d61zakMfyLZ2e4dXvgKuXi7kLf6BYG0t9zSIb
 3LBX2KAOZ9V8esJJ2TdoKK9CPmck7AzQwFUZC.9.OKjYTxEemkom8PRjb.3SJUFp2.CwxJnGrsgL
 7eu2XTRkxDQvGeQ4XOCC8p7kZbxM89qeQoRPFnQdGjYVuFNtBzGC76OHIEvqXxBTnUeyKVl_Dy7b
 iMhVOv7NPGlgbAF9F6bABIteg0kxXUwd.MgKR2rx8LkjItGcxsOCGml3.98SRLmSz3n1UxvQ2iGK
 5cALxeLXInfqNR.p9XEU4MddMpw9Wm9quQhwUYnb9mSX6CNqnt_ZDvcx1AKlE4UrTd1jemRVwedm
 S3._HGe.lRdraLy_rzNAvH16ux6RRQ_yeIGNeFcFu45Bg3KeLDw7rfJR8phjoL.CG2KHRv94ps4m
 kZ_zjLNa44rja6Vxu5ZeKZ4XVVwTb4qtzZHyJxUG8DAiVbEIkZOMr.SJe04fXHYZMJ1wNae0KEGJ
 1w0Z5JL1ru7MKpUkfN4k2VytqSrmJd.kqNSIjSkLF_4zcZtcLRPJhsST5TZ04m5hA2izSURAJ39R
 QquTnf79yYnRyOIGTdSrll1takEagiq0SADk9p0GEKdB89gtAepinCVedzfk1.lbuFEFqMLlYJ6x
 RiNBnfy4pfTucKPvL8C9MDoUgbJ.NQpCWXaPbShQVReFpWclcTSlpDUjhUrED02aTrSSMkmvNnMB
 Cbe68cFb.zcnjntdU61Oic0zl40RieTxQpjytzQukJ70wvsqG5jhRx8DMSu3kyA7epuBeGoXiSYa
 3BNy5lBfcDZHhYD26wnsKqoYczx1ujgoOVkbCaqXCgOBP2ezVA3bLyh3arhzFyCxt06Q0ed.xWgu
 PdK4oNWubuCCFY1T_K8uyVSPiHUk8xKj215g95pX7SP92D8r6fTuAS0bTiFIQ9ecSiXx3pAlVJFs
 LLTox4NCGH._FED6.1xZGs.aavXk8hHarAyFsmhPoys0SU2uWBshoKSICaxILhOGIBqCfKsZxWZ7
 e4jIX9H0gQOTV1xLDHcCNAnUbzZYVJry7TZZj0MVp.fu2LfNFywAj2o0oPHMJEXJqqRdYNz.yogY
 1YjAf99imCV0.hTpbqenE1vvP.DUTc4hWwlJ09SubNPBsWO6ZD7TG4PPBn8FpAjgo3O61nZ7vLcJ
 n9WLqgmfyMxBj3Jie4kVNzjxTooDON5AbYx043qyXS2uqOv86BjCIrcmNchqtWT7UnixJrrkzMtA
 Kqr3MKpl05nn6DagPFIo3wNXnUZieijjjIvuWNHFo3obGoxU577KC6hjmQ8XUys4NNV7_Xvjek9r
 YIHYVqI_swwZd7AtbtWlA1GaDO.KdGh8i1hVFUD6mLFt7k2p2syOpNiOWgZ7uOLe.Z9Mc56l.ZYC
 WKrbIbOR.QZQ5KFckZDyaY3fnaGZnNYkEEb_gPsxyWUIMOhnE0jIfl97.OksussnUaI5c.N2u4tR
 OfgfT9J0Nyken2mDzMcqg3gx4Wu9Ef_2bQ2MxI3XaNDpoWDFD46WlmzNv4lyKSJCpl2nHkeEpci2
 4EOZ.NHURLjqzXdvf2iAgIB6RBMe9H.tG2FUtZ8Ajwcu1S8pdh8yHpN3j6chnR5TSwAOAVMSvl8Y
 qmVQKbFQLOCqP5swNU3ahwT64pnCNENVIwiwued7qCdRIBm7E2ghUa6zukjgn5SyUctbvTi5.hzH
 YG0Q_gH7DIyxUPTvMVR6LTpRTsvW3_DcliFjcLtXXxvi_K71SvUFkj4JjOI0wP7xHKT0z8m06GpD
 _vSs17ZBx_VKkbN8Hs_FkGm0gMqNwG53DRySI9Qoz9X3DyNkkJnPvZVF.rmyfZnmW0g82UsUnZEb
 PkZTV84ymzv8hsNwjfrDZaeFzpnpKyJDHQld6i5ZU_lA0q9FODzwdeF.kSuZ0yZYLYDVEhjuHmfI
 RevyYPgExgIEeJJHNnfVWIHb6mXhqZkbJLPTWRi4D1OSC7EvGtdGSd6NIbUUTZsVQB.yMuOR45FD
 yTLX.QN2KLeZHiQA65mbOD264FuseOW0RqueNofS8gYNuAlpz_oj5co60c.7rZcTReP_xF0TcOIF
 SpxJdyZ88eW9de9RdEa.TIvC8.Gkh7U9HAPMzTangTtdGATz7ua8SP7eBBoi3z3.WNw21mYCAEdo
 EwO3AtfuhzS6F3mOdewtmpRGNThqmqfDhN.nu
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.bf2.yahoo.com with HTTP; Tue, 12 Oct 2021 18:20:39 +0000
Date: Tue, 12 Oct 2021 18:20:37 +0000 (UTC)
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID: <2012533350.1050943.1634062837483@mail.yahoo.com>
In-Reply-To: <279084312.1067344.1634061310152@mail.yahoo.com>
References: <1552911735.1055946.1634056580695@mail.yahoo.com> <85AEED2D-0B70-47B9-9DE5-696466F4A310@gmail.com> <279084312.1067344.1634061310152@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19116 YMailNorrin
Message-ID-Hash: SWM6Q4FWZPGE2I2I73V4CADBIHUNXFRF
X-Message-ID-Hash: SWM6Q4FWZPGE2I2I73V4CADBIHUNXFRF
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Philip Balister <philip@balister.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SWM6Q4FWZPGE2I2I73V4CADBIHUNXFRF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7211270170774327456=="

--===============7211270170774327456==
Content-Type: multipart/alternative;
	boundary="----=_Part_1050942_2055149097.1634062837480"

------=_Part_1050942_2055149097.1634062837480
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Out of curiosity, when running "systemctl status usrp-hwd" I get a message=
 stating "vendor preset=3Denabled". Is there anyway possible that mpm is st=
ill being started at bootup?=20

    On Tuesday, October 12, 2021, 01:55:53 PM EDT, Tellrell White via USRP-=
users <usrp-users@lists.ettus.com> wrote: =20
=20
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
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_1050942_2055149097.1634062837480
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpee2354d5yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Out of curiosity, when runni=
ng "systemctl status usrp-hwd" I get a message stating "vendor preset=3Dena=
bled". Is there anyway possible that mpm is still being started at bootup? =
<br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_4922596405" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, October 12, 2021, 01:55:53 PM EDT, Tellrell=
 White via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv0215849895"><div><div class=3D"yiv021584=
9895ydpe204cb95yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helve=
tica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir=3D"ltr">I/O Expander(TCA6408A) on the daughterboard.<br cl=
ear=3D"none"></div><div><br clear=3D"none"></div>
       =20
        </div><div class=3D"yiv0215849895yqt2997998585" id=3D"yiv0215849895=
yqt74149"><div class=3D"yiv0215849895yahoo_quoted" id=3D"yiv0215849895yahoo=
_quoted_4560287307">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, October 12, 2021, 01:50:19 PM EDT, Marcus D=
 Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv0215849895"><div>Which i2C device are yo=
u trying to access?<br clear=3D"none"><br clear=3D"none"><div dir=3D"ltr">S=
ent from my iPhone</div><div dir=3D"ltr"><div class=3D"yiv0215849895yqt9321=
152663" id=3D"yiv0215849895yqtfd91387"><br clear=3D"none"><blockquote type=
=3D"cite">On Oct 12, 2021, at 12:36 PM, Tellrell White &lt;t_whit_87@yahoo.=
com&gt; wrote:<br clear=3D"none"><br clear=3D"none"></blockquote></div></di=
v><div class=3D"yiv0215849895yqt9321152663" id=3D"yiv0215849895yqtfd74427">=
<blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div class=3D"yiv021584=
9895ydp7e1eb3f9yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helve=
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
        </div><div class=3D"yiv0215849895yahoo_quoted" id=3D"yiv0215849895y=
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
                <div><div id=3D"yiv0215849895"><div><div dir=3D"ltr"><div>J=
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
div class=3D"yiv0215849895gmail_quote"><div class=3D"yiv0215849895yqt310234=
0049" id=3D"yiv0215849895yqt65401"><div class=3D"yiv0215849895gmail_attr" d=
ir=3D"ltr">On Wed, Oct 6, 2021 at 11:45 PM Marcus D. Leech &lt;<a rel=3D"no=
follow noopener noreferrer" shape=3D"rect" ymailto=3D"mailto:patchvonbraun@=
gmail.com" target=3D"_blank" href=3D"mailto:patchvonbraun@gmail.com">patchv=
onbraun@gmail.com</a>&gt; wrote:<br clear=3D"none"></div><blockquote class=
=3D"yiv0215849895gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
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
      <div id=3D"yiv0215849895gmail-m_-2172980616365166026yahoo_quoted_4426=
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
      <div id=3D"yiv0215849895gmail-m_-2172980616365166026yahoo_quoted_4426=
225589">
        <div style=3D"font-family:Helvetica, Arial, sans-serif;font-size:13=
px;color:rgb(38,40,42);">
          <div>
            <div id=3D"yiv0215849895gmail-m_-2172980616365166026yiv53518960=
31">
              <div>
                <div id=3D"yiv0215849895gmail-m_-2172980616365166026yiv5351=
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
</div></div><div class=3D"yiv0215849895yqt3102340049" id=3D"yiv0215849895yq=
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
        </div></div></div></div><div class=3D"yqt2997998585" id=3D"yqt47768=
">_______________________________________________<br clear=3D"none">USRP-us=
ers mailing list -- <a shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.et=
tus.com" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect"=
 ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear=3D=
"none"></div></div>
            </div>
        </div></body></html>
------=_Part_1050942_2055149097.1634062837480--

--===============7211270170774327456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7211270170774327456==--
