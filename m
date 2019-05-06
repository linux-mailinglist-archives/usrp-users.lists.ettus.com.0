Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF42143C1
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2019 05:27:16 +0200 (CEST)
Received: from [::1] (port=42442 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNUHT-0003px-Ne; Sun, 05 May 2019 23:27:07 -0400
Received: from sonic301-19.consmr.mail.sg3.yahoo.com ([106.10.242.82]:33756)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <rensisam@yahoo.co.in>)
 id 1hNUGw-0003l1-73
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 23:27:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
 t=1557113150; bh=2KBe+NeFFC1QrKXFZthliLTvPOku/giL/r4ItV4KvCE=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
 b=t1c3i1od7XHhung7JveFlFLxEvbeGdQXNW3n/2LoIHP/zaEU4uRqotgRe7u0Y0cJkmy+cW015xa1n4e/uULdmLKAg6j0LTM0BrGN+afuJZyCt6jRbh57zUHZu2NQPO6KO1+qQYkJ6WNfHiC9vEPCsgZCMg8KXhQhKxT423+VIMs+dwor2lC5QaJOL/U4xn9jjruZflYRh2hpHYUTxvvMoIIMyox+r81g4DyBWqdjL5LmudyfP2HA2cdFIFuzYz4Anox74FfJXdRa7WP8hJNwTNbCrexzFwSXpcKY+ScmCj70xy0ZnTvPl2v9boVJ8i5DG4RSasKnpR6clFJnQccD4w==
X-YMail-OSG: slmSsSUVM1kre9DViCSL96i9JDHRao5.UqH_PU6ZtAG7l5MwSXY7F5xkG8D_jDX
 iW.x_3Lov4zb3TMmmv4wKa7vQGt0LXJH4gaPuxqy_uQGX3BGrUYXFoohqMxr.xaanm4c5tkwpBrZ
 aMNokILdre6BN4ClovkAoWO7MzUyTZ_yxkNjlKu55IfTaPd3Vu6OaLZ21ohRCs_lLShjIZFLyE8J
 xeHIQTpLsifjBfnF_Hcz._trEWgF2YHZ_DT25.V8dJfkSPP0pX9Svlij7B61I1X_rcyZGd3KyOhY
 WqgJLkjeFnOikCpQfyxVzv0MwoVpreG9EKmELYHGzfwS4bQAip6ljLNMJjEoIy7LjJpZOtrn1IiC
 yo2ZstdRZhmrSyYbyTtNDOS4kiOJ.KXVpFzJB.woWQ1comBrILEoFOc8dLXTuhXiDixj.Y2I_Mcb
 WCGMwTRb1YBLA51c4R67YBnt74heAAyZFlIofgJ3G0uQJeZrbdprewAbfdN4HYpn877AcV3eAZXP
 tO9MdKnEWIND58Im90ZXRcNYfcJynakMkoy0KnQz9CiavqMM4LuungIfbh5chV5nO_rSF4X0LN1n
 Nt324PUpfPUzcZfnONxLKclXFukGxT0YjjRVraPOWLtJsdVsj3mXbrKmO_FRC6GKxQH_sVjUz6yX
 fW_aIPB4XqB_oTKfIqEkdkfPcMWzwdRimO4h75RHHidLHZJEH_0LlUad9g_iGGmH.OgBPygYBqGF
 VxRlt2uE23tnJWIyvme62F2m3DhceJT2wzyimdjLGw6rqkgNozZnbdHRcWweEtU3tZLUuEpI2CBK
 K_7gidWMw8vI8obmINxa76EZbyFhruufPSrbM375gHkf_DkeCVWVDZnoOigtwIZKymhDlqG3aJoy
 JcMZwQUKVdDIIW0ZjvBqD6pr1IGqxxnyTQrKix5HBPPWd9Hf8WRv2MghoEcBEr8Q4w6Ck.M4eMuQ
 3o2kqIip8xsx4esWHCezJJXA4PVuXEn6JHD6rcuxwrWnZWEvoQSmDKl7nliAF7wVdjMVDCPLW8zk
 rUsddKJ1j9paNd7m9JBrzuGojiNfLjuGHpL.8gj_RGRGmB2wykbqx2QSTDSeHq9A6KyYUVAPSpMk
 925wi5jLLAFNywCIdEqwkWHjNPEptAgF9OKLY.z3Yb70GmLpzgUjDOfPBsfZHO.HKkmJRwbOiZIn
 szNOUDlQKleOSlWMzLxf4ZqoYAxSw7Q--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.sg3.yahoo.com with HTTP; Mon, 6 May 2019 03:25:50 +0000
Date: Mon, 6 May 2019 03:25:47 +0000 (UTC)
To: Vsr Ravi via USRP-users <usrp-users@lists.ettus.com>, 
 Robin Coxe <robin.coxe@ettus.com>, 
 =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID: <137135625.563631.1557113147504@mail.yahoo.com>
In-Reply-To: <c12f8d6ac3accd3f0df0550a532a7779dac1ffd0.camel@ettus.com>
References: <1432742277.62002.1556943355674.ref@mail.yahoo.com>
 <1432742277.62002.1556943355674@mail.yahoo.com>
 <DM6PR03MB45560C798154B6FD08C115F4F2360@DM6PR03MB4556.namprd03.prod.outlook.com>
 <1512147364.461598.1557084229705@mail.yahoo.com>
 <c12f8d6ac3accd3f0df0550a532a7779dac1ffd0.camel@ettus.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.13583 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B200 Overrun
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
From: Rensi Mathew via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rensi Mathew <rensisam@yahoo.co.in>
Content-Type: multipart/mixed; boundary="===============5952491257480179350=="
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

--===============5952491257480179350==
Content-Type: multipart/alternative; 
	boundary="----=_Part_563630_344136719.1557113147503"
Content-Length: 6548

------=_Part_563630_344136719.1557113147503
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 @Marcus Muller
What are the settings=C2=A0of usrp_spectrum_sense that you use?
Sampling rate :16e6Min_freq 2.4e9max_freq 2.5e9BW 15.625e3 Hz
FFT 1024
Rensi

    On Monday, 6 May, 2019, 1:20:20 am IST, Marcus M=C3=BCller <marcus.muel=
ler@ettus.com> wrote: =20
=20
 So, what are the options with which you run usrp_spectrum_sense?


On Sun, 2019-05-05 at 19:23 +0000, Rensi Mathew via USRP-users wrote:
> Yes USB 3.0.=20
>=20
> The OS is Ubuntu 16.04 LTS 64-bit
> Intel=C2=AE Core=E2=84=A2 i5-4570 CPU @ 3.20GHz =C3=97 4=20
> Disk 309.6 GB
> Memory 3.6 GiB
>=20
> Could it because of memory problem?
> The yellow/orange light in the system blinks when USRP runs(showing
> heavily loaded).
>=20
> Rensi
> On Saturday, 4 May, 2019, 10:09:03 am IST, Robin Coxe <
> robin.coxe@ettus.com> wrote:
>=20
>=20
> Are you using USB 3.0?=C2=A0 USB 2.0 will max out at about 8 Ms/s.=C2=A0=
=20
>=20
>=20
>=20
> Robin Coxe | Chief R&D Program Manager, SDR | Santa Clara, CA |
> 408.610.6363
>=C2=A0=20
> From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Rensi Mathew via USRP-users <usrp-users@lists.ettus.com>
> Sent: Friday, May 3, 2019 9:17 PM
> To: Vsr Ravi via USRP-users
> Subject: [USRP-users] B200 Overrun
>=C2=A0=20
> Dear sir
> I am using B200 SDR to run the program usrp_spectrum_sense.py with a
> sampling frequency of 16e6.
> I think I am using a fairly low sampling rate.
> Still I am getting some 'OOOO'.
>=20
> Could someone tell me the possible reasons for the same? And how I
> can avoid the same?
>=20
> Thanking you
> Rensi Sam
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

 =20
------=_Part_563630_344136719.1557113147503
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp4347b053yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div><div><div>@Marcus Muller</div><div><br clear=3D"none"></div><d=
iv><div><span style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-s=
erif;">What are the settings&nbsp;</span><span style=3D"font-family:Helveti=
ca Neue, Helvetica, Arial, sans-serif;">of usrp_spectrum_sense that you use=
?</span></div><br clear=3D"none"></div><div>Sampling rate :16e6</div><div>M=
in_freq 2.4e9</div><div>max_freq 2.5e9</div><div>BW 15.625e3 Hz<br></div><d=
iv>FFT 1024</div></div><div><br></div><div>Rensi<br></div></div><div><br></=
div>
       =20
        </div><div id=3D"yahoo_quoted_7734029710" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 6 May, 2019, 1:20:20 am IST, Marcus M=C3=BCl=
ler &lt;marcus.mueller@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">So, what are the options with which y=
ou run usrp_spectrum_sense?<br clear=3D"none"><br clear=3D"none"><div class=
=3D"yqt9271989042" id=3D"yqtfd94236"><br clear=3D"none">On Sun, 2019-05-05 =
at 19:23 +0000, Rensi Mathew via USRP-users wrote:<br clear=3D"none">&gt; Y=
es USB 3.0. <br clear=3D"none">&gt; <br clear=3D"none">&gt; The OS is Ubunt=
u 16.04 LTS 64-bit<br clear=3D"none">&gt; Intel=C2=AE Core=E2=84=A2 i5-4570=
 CPU @ 3.20GHz =C3=97 4 <br clear=3D"none">&gt; Disk 309.6 GB<br clear=3D"n=
one">&gt; Memory 3.6 GiB<br clear=3D"none">&gt; <br clear=3D"none">&gt; Cou=
ld it because of memory problem?<br clear=3D"none">&gt; The yellow/orange l=
ight in the system blinks when USRP runs(showing<br clear=3D"none">&gt; hea=
vily loaded).<br clear=3D"none">&gt; <br clear=3D"none">&gt; Rensi<br clear=
=3D"none">&gt; On Saturday, 4 May, 2019, 10:09:03 am IST, Robin Coxe &lt;<b=
r clear=3D"none">&gt; <a shape=3D"rect" ymailto=3D"mailto:robin.coxe@ettus.=
com" href=3D"mailto:robin.coxe@ettus.com">robin.coxe@ettus.com</a>&gt; wrot=
e:<br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D"none">&gt; A=
re you using USB 3.0?&nbsp; USB 2.0 will max out at about 8 Ms/s.&nbsp; <br=
 clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D"none">&gt; <br cl=
ear=3D"none">&gt; Robin Coxe | Chief R&amp;D Program Manager, SDR | Santa C=
lara, CA |<br clear=3D"none">&gt; 408.610.6363<br clear=3D"none">&gt;&nbsp;=
 <br clear=3D"none">&gt; From: USRP-users &lt;<a shape=3D"rect" ymailto=3D"=
mailto:usrp-users-bounces@lists.ettus.com" href=3D"mailto:usrp-users-bounce=
s@lists.ettus.com">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of<=
br clear=3D"none">&gt; Rensi Mathew via USRP-users &lt;<a shape=3D"rect" ym=
ailto=3D"mailto:usrp-users@lists.ettus.com" href=3D"mailto:usrp-users@lists=
.ettus.com">usrp-users@lists.ettus.com</a>&gt;<br clear=3D"none">&gt; Sent:=
 Friday, May 3, 2019 9:17 PM<br clear=3D"none">&gt; To: Vsr Ravi via USRP-u=
sers<br clear=3D"none">&gt; Subject: [USRP-users] B200 Overrun<br clear=3D"=
none">&gt;&nbsp; <br clear=3D"none">&gt; Dear sir<br clear=3D"none">&gt; I =
am using B200 SDR to run the program usrp_spectrum_sense.py with a<br clear=
=3D"none">&gt; sampling frequency of 16e6.<br clear=3D"none">&gt; I think I=
 am using a fairly low sampling rate.<br clear=3D"none">&gt; Still I am get=
ting some 'OOOO'.<br clear=3D"none">&gt; <br clear=3D"none">&gt; Could some=
one tell me the possible reasons for the same? And how I<br clear=3D"none">=
&gt; can avoid the same?<br clear=3D"none">&gt; <br clear=3D"none">&gt; Tha=
nking you<br clear=3D"none">&gt; Rensi Sam</div><br clear=3D"none">&gt; <br=
 clear=3D"none">&gt; _______________________________________________<br cle=
ar=3D"none">&gt; USRP-users mailing list<br clear=3D"none">&gt; <a shape=3D=
"rect" ymailto=3D"mailto:USRP-users@lists.ettus.com" href=3D"mailto:USRP-us=
ers@lists.ettus.com">USRP-users@lists.ettus.com</a><br clear=3D"none">&gt; =
<a shape=3D"rect" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-user=
s_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com</a><div class=3D"yqt9271989042" id=3D"yqtfd590=
96"><br clear=3D"none"><br clear=3D"none"></div></div></div>
            </div>
        </div></body></html>
------=_Part_563630_344136719.1557113147503--


--===============5952491257480179350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5952491257480179350==--

