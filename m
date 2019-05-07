Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1675A1628E
	for <lists+usrp-users@lfdr.de>; Tue,  7 May 2019 13:04:29 +0200 (CEST)
Received: from [::1] (port=60398 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNxtW-0002L6-4j; Tue, 07 May 2019 07:04:22 -0400
Received: from sonic307-20.consmr.mail.sg3.yahoo.com ([106.10.241.37]:33868)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <rensisam@yahoo.co.in>)
 id 1hNxsy-0002Fg-P3
 for usrp-users@lists.ettus.com; Tue, 07 May 2019 07:04:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
 t=1557226985; bh=QHHDyYwRM9bTc09R8X302Yz3HKoGVRjjYQc5ulXvMgw=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
 b=t9GJ/naXiamljXFDASYtEP71DKRdvdwXUbH4yhBU4UpIb1N/jN69yVd9uGneQXqYUc9IZeKd9aoZS32CJ4divKu6fNxZ5dUKG8qj5pMOR6ijPTfvdxXiZ46MmIZ6d2rVqzQJyTT8VYj2dJZpqwXi0rg0HtCddB4zfSg6U2uryZEucdYo9l5ItYHdtcPGccDkAiv3eKVlCqucyOaSeXiasXpluRlYy46iGwSt9REmwx6TlueEXr4RAJVACtn8Nrl/yAFjq0etgcA2zSbemwWC+iTeFI0HGgvFRTSdZQ/jboKj7m9/D3Q9UxS2RsOo7GOCkkMrfr2wiu7HHt6Gtbl4OA==
X-YMail-OSG: u0uAK4EVM1kAnJ23dwpMDfLobWAGQv82V9UcgcGDN83vG6ZM6U64xDJsQTeKbqW
 MSktJaMikm3LstNPOuxeF7Qac_Aa.A.tGV5I6ovkgWrbJqrgQ3w735GDzFnHXtEKvknNU9BYBnpl
 c4pEcsWCkWT83xB.BMxhWnep6gRut49BNjdd1CLg3pLmLAi6xeAyuOuMLg0y7Jue2BhZXL59XVud
 c_gqybKY72ec.9Pz8P0ywO3jpKceSV5.sdtT1WBpRoo8LfInl.5ZfR2ibbH2nCEkVxfr_jq7Gzod
 UkqBR1sAi9DIi63IEx4QfDdJ.kUFOkBy_E9AzD6tE8BOMl0fsxKxd3IfRFFL1rWkiKVl1Sp3igq7
 ndVtoJY3QN9RzVDRujHTGyK.i4SbU7T5kXX4PLHPLDzgwrP6cY6nFuh5AYveOOjZH5Id6872QJPD
 5vmcheFpoG.WoDCTa8gNQ2jD0ZcYPoybcKNJP9zN.Ox_u_r8Uy8tSBk3oD1t5O4CFZuNbibZr4w3
 7HKRJJlkk9c84O1VbJaRFEJag4Ji8WcmqhG_E9NiH4KBOetqakQ9EpalANPZkZtoA6YuT4RdnKV_
 sYv5rpM1RUxs7tLQlvn4e0.TNvk5bE_njQJy9YgEZwb47ssz5g9Qre3IqLbxAispM2O4WwmAw.Mj
 fl_AsTynZ_Mkm1DWaUmdQu4jVenwcT5sIqNIhE_HZZ1X902c4t9f.8Yl_f5cO9MR1id2w7S4NEEq
 s1Pro0rDx1uskNDOpTA0SiEzlCvtZQopC03OgaJzM3xAhfgF85tF88_bcYVVABr5M.pzqrDGSG1w
 dm7Ck_tnnfju06CC4THXbewZ6OzqWXWHAi61Lph3nd_GpITmCK1bL1tXsIdH_mvVUqaXfTLPszuA
 SSfxtEYjbqk_RFtiNKu5xSM9BNl1eEATpPVQmQvcg7NkaPwtVdH76hPnIr7AUIPLVI76i1E3CiKG
 sdnXHw_sjZENSPuopr_Xyg7I3DkfGXGMtFYgymymj07GeABKEIMBcl5ItYO2hk6h2jk_eh1exfG2
 b7Zx.gQ5YwUjFozXYxcGkx3pe9Fs7t_Y2_GzQR9kzVJatTuIfs39hoYGzo7eu8ufRVNFHy5HV0Vf
 18fH_ZKX2Y2eki8lfqnvr9BoDzwNMxgxyCD6I.VxD0S5GdAsk8xwiS0zpHiCDHMKoR8g71ZNcWmw
 Qz3oqs59Qc7HlKIk_VcwTbabB
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.sg3.yahoo.com with HTTP; Tue, 7 May 2019 11:03:05 +0000
Date: Tue, 7 May 2019 11:03:02 +0000 (UTC)
To: Vsr Ravi via USRP-users <usrp-users@lists.ettus.com>, 
 Robin Coxe <robin.coxe@ettus.com>, 
 =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>, 
 =?UTF-8?Q?Marcus_M=C3=BCller?= <mmueller@gnuradio.org>
Message-ID: <473643011.1385817.1557226982243@mail.yahoo.com>
In-Reply-To: <1512147364.461598.1557084229705@mail.yahoo.com>
References: <1432742277.62002.1556943355674.ref@mail.yahoo.com>
 <1432742277.62002.1556943355674@mail.yahoo.com>
 <DM6PR03MB45560C798154B6FD08C115F4F2360@DM6PR03MB4556.namprd03.prod.outlook.com>
 <1512147364.461598.1557084229705@mail.yahoo.com>
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
Content-Type: multipart/mixed; boundary="===============4810244034449015295=="
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

--===============4810244034449015295==
Content-Type: multipart/alternative; 
	boundary="----=_Part_1385816_1037448209.1557226982241"
Content-Length: 6970

------=_Part_1385816_1037448209.1557226982241
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hello all,
this is the USB Controller.
USB controller: Intel Corporation 8 Series/C220 Series Chipset Family USB x=
HCI (rev 05)

What are the settings=C2=A0of usrp_spectrum_sense that you use?
Sampling rate :16e6Min_freq 2.4e9max_freq 2.5e9BW 15.625e3 Hz
FFT 1024
So, with these, how can I perform 'OOOO'-free reception?Any comments please


    On Monday, 6 May, 2019, 12:53:49 am IST, Rensi Mathew <rensisam@yahoo.c=
o.in> wrote: =20
=20
  Yes USB 3.0.=C2=A0

The OS is Ubuntu 16.04 LTS=C2=A064-bit
Intel=C2=AE Core=E2=84=A2 i5-4570 CPU @ 3.20GHz =C3=97 4=C2=A0
Disk 309.6 GB
Memory=C2=A03.6 GiB
Could it because of memory problem?The yellow/orange light in the system bl=
inks when USRP runs(showing heavily loaded).
Rensi    On Saturday, 4 May, 2019, 10:09:03 am IST, Robin Coxe <robin.coxe@=
ettus.com> wrote: =20
=20
 Are you using USB 3.0? =C2=A0USB 2.0 will max out at about 8 Ms/s. =C2=A0


Robin Coxe | Chief R&D Program Manager, SDR | Santa Clara, CA | 408.610.636=
3=C2=A0From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of R=
ensi Mathew via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, May 3, 2019 9:17 PM
To: Vsr Ravi via USRP-users
Subject: [USRP-users] B200 Overrun=C2=A0Dear sirI am using B200 SDR to run =
the program usrp_spectrum_sense.py with a sampling frequency of 16e6.I thin=
k I am using a fairly low sampling rate.
Still I am getting some 'OOOO'.
Could someone tell me the possible reasons for the same? And how I can avoi=
d the same?
Thanking youRensi Sam

   =20
------=_Part_1385816_1037448209.1557226982241
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp35703879yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div>Hello all,</div><div><br></div><div><div>this is the USB Contr=
oller.<br></div><div>USB controller: Intel Corporation 8 Series/C220 Series=
 Chipset Family USB xHCI (rev 05)<br></div><br></div><div><div><div><div><s=
pan style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">Wha=
t are the settings&nbsp;</span><span style=3D"font-family:Helvetica Neue, H=
elvetica, Arial, sans-serif;">of usrp_spectrum_sense that you use?</span></=
div><br clear=3D"none"></div><div>Sampling rate :16e6</div><div>Min_freq 2.=
4e9</div><div>max_freq 2.5e9</div><div>BW 15.625e3 Hz<br clear=3D"none"></d=
iv><div>FFT 1024</div><div><br></div><div>So, with these, how can I perform=
 'OOOO'-free reception?</div><div>Any comments please<br clear=3D"none"></d=
iv></div><br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_7927373112" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 6 May, 2019, 12:53:49 am IST, Rensi Mathew &=
lt;rensisam@yahoo.co.in&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv8981252573"><div><div class=3D"yiv898125=
2573ydpefd2b12cyahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helve=
tica, Arial, sans-serif;font-size:16px;"><div></div>
        <div><div><div style=3D"font-family:Helvetica Neue, Helvetica, Aria=
l, sans-serif;font-size:16px;">Yes USB 3.0.&nbsp;<br clear=3D"none"></div><=
div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-=
size:16px;"><br clear=3D"none"></div><div style=3D"font-family:Helvetica Ne=
ue, Helvetica, Arial, sans-serif;font-size:16px;">The OS is Ubuntu 16.04 LT=
S&nbsp;64-bit<br clear=3D"none"></div><div style=3D"font-family:Helvetica N=
eue, Helvetica, Arial, sans-serif;font-size:16px;">Intel=C2=AE Core=E2=84=
=A2 i5-4570 CPU @ 3.20GHz =C3=97 4&nbsp;<br clear=3D"none"><div>Disk 309.6 =
GB<br clear=3D"none"></div><div><div>Memory&nbsp;3.6 GiB</div><div><br clea=
r=3D"none"></div><div>Could it because of memory problem?</div><div>The yel=
low/orange light in the system blinks when USRP runs(showing heavily loaded=
).</div></div></div></div><br clear=3D"none"></div><div>Rensi</div>
       =20
        </div><div class=3D"yiv8981252573yqt5795181683" id=3D"yiv8981252573=
yqt50063"><div class=3D"yiv8981252573yahoo_quoted" id=3D"yiv8981252573yahoo=
_quoted_7795705303">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Saturday, 4 May, 2019, 10:09:03 am IST, Robin Coxe &=
lt;robin.coxe@ettus.com&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv8981252573"><div>
<div>
<div>
<div>
<div style=3D"direction:ltr;">Are you using USB 3.0? &nbsp;USB 2.0 will max=
 out at about 8 Ms/s. &nbsp;</div>
<div><br clear=3D"none">
</div>
<div style=3D"direction:ltr;"></div>
<div><br clear=3D"none">
</div>
</div>
<div><br clear=3D"none">
</div>
<div class=3D"yiv8981252573ms-outlook-ios-signature">
<div style=3D"direction:ltr;">Robin Coxe | Chief R&amp;D Program Manager, S=
DR | Santa Clara, CA | 408.610.6363</div>
</div>
</div>
<div>&nbsp;</div>
<hr style=3D"display:inline-block;width:98%;" tabindex=3D"-1">
<div class=3D"yiv8981252573yqt0926039493" id=3D"yiv8981252573yqt92703"><div=
 id=3D"yiv8981252573divRplyFwdMsg"><font style=3D"font-size:11pt;" face=3D"=
Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-use=
rs-bounces@lists.ettus.com&gt; on behalf of Rensi Mathew via USRP-users &lt=
;usrp-users@lists.ettus.com&gt;<br clear=3D"none">
<b>Sent:</b> Friday, May 3, 2019 9:17 PM<br clear=3D"none">
<b>To:</b> Vsr Ravi via USRP-users<br clear=3D"none">
<b>Subject:</b> [USRP-users] B200 Overrun
</font><div>&nbsp;</div>
</div></div>
</div></div><div class=3D"yiv8981252573yqt0926039493" id=3D"yiv8981252573yq=
t51987"><div><div class=3D"yiv8981252573yahoo-style-wrap" style=3D"font-fam=
ily:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
<div>
<div>
<div>Dear sir</div>
<div>I am using B200 SDR to run the program usrp_spectrum_sense.py with a s=
ampling frequency of 16e6.</div>
<div>I think I am using a fairly low sampling rate.<br clear=3D"none">
</div>
<div>Still I am getting some 'OOOO'.</div>
<div><br clear=3D"none">
</div>
<div>Could someone tell me the possible reasons for the same? And how I can=
 avoid the same?</div>
<div><br clear=3D"none">
</div>
<div>Thanking you</div>
<div>Rensi Sam<br clear=3D"none">
</div>
</div>
<br clear=3D"none">
</div>
</div>

</div></div></div></div>
            </div>
        </div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_1385816_1037448209.1557226982241--


--===============4810244034449015295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4810244034449015295==--

