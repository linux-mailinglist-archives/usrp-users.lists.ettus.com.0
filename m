Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C191E58AD08
	for <lists+usrp-users@lfdr.de>; Fri,  5 Aug 2022 17:26:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42FAC383E32
	for <lists+usrp-users@lfdr.de>; Fri,  5 Aug 2022 11:26:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659713208; bh=xrvsZ9C7b7L/bwxsQ9f0nV7ryuyVYNgmA+QHT67CrwU=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=tgK4PVI5YYW1G/qwIQZfTGOyHTAMsb4jcm8aDzeUbSpd8gJgfzSnSJIuS9zEngRFw
	 cfWOX2jJKFYK/WjJd9InRnNsb01WilO9avTyX5+2PnI/+3HJxeBLm9zoePzgVkTA22
	 GG/W/QoAP+QfhF/SH4u/tzuBaTph0eFSzECYifaoYgg173zI0Uj0tGYDaAaA8nT1t+
	 VLPamkwBF9Yljvci8yjWgKp0jfDq4+lTFeaeRyZvup/4Q6sStlrGWRVk4x2weqLx1y
	 lt1pMyI0l8qTEssxlVaGxWchavs50NVN+3SF+kYG9uVmMfC0RF0sWYOtQ0bBdbsu6x
	 FRv44ceAIBYow==
Received: from sonic303-2.consmr.mail.bf2.yahoo.com (sonic303-2.consmr.mail.bf2.yahoo.com [74.6.131.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B00D380AF0
	for <usrp-users@lists.ettus.com>; Fri,  5 Aug 2022 10:09:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="kBQIbTm4";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1659708549; bh=3B83J2RusNzfzvqyJyIm4v1pPnzcqQJ06Fzg7+XqaCw=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=kBQIbTm4OQ0+/Owaqvvbk0UHGErAghHVhc/XzXZf8OVojKrj/kH7Xp2H/CgD/51jNoTLn80pa60wr3yHorpGP+M62jJXhT/82tRJz45//2hOYlsd/U+pwjixxGp/ARbjbEOFtcbR85zQlL/Hn5smBNlPFDhlIesH0VTVNqkzuUHlKIt7Ydgy82nKPXnPKFUWCZSOfuJdgQj1n5IS18B5QBET+mhAaVIMLYcGdZbc/6S7neA0QUkqL0JRGYKdtiG+4O/nZ/QH/heOhOwQ6lAwzluZn+ShzV5yeQt5w+dQhFwx2phlDQUdk+w9y//H1ZHPiqgRzVw3ktcSFEP6fK7jWQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1659708549; bh=Eoxx5+X3hO+swV1EV84M+z8KGlOoFdIhSOYOwhhimYK=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=mWmW6LsrVG0PQi98gtlqursTamG/NpOLgvopT49a3jBC7Ol32TlFWK4BY7K0SPhMiexu1Z/Ncs1VCl50Zigtsr05T6V5JuKuPXgX3W0piC2Da7vsv5WfJ/DDoodVND+mw1pp4dHRrjYwA+OLamDpbogPIZAy794a0Zc5ek4QhxdfJRm66CdRnvnuXszPg+7naPisEDsP7tGyMt7Kg3IMFyP4ohI5OU06yz4L6ZrxO41dLdJnoOGalU7u/YHL8bt5wl/0B0rD4+ErbZp10XNoi/DdHUmQ/WrUACiMCjsMnb2/ZxZUOPH0N1cBoapGbu9YbbUVEQqb+Hf7AQyJMVcQzA==
X-YMail-OSG: DgOmUhkVM1lOl00JGhasNClf4j0fN4PuqLZxEFn7_mhIxrbcJKkWyAU2pOdZAyS
 okOBp1qRyoXWuJujLlK2MM5RcawG0zVhN4Qb5WHsGRmDIrscktSXqyKCJsmg_hh8fWjISdnkFS8u
 Z9I5Cg_cCoXFOTU2IJJUrn9s89oSB0yIwFvKuQDZ07rvYiAjPXvURy8vI0IPbbVnCLq7TpQ7Z2QW
 gTaeQW23635UJ7KFJhA5xgXwoW367.xehTl_jq9HkYFwtGP2nYtaQPwohRKHmZJQ9FWWnldIpVSC
 Nj9uzHSXq4HXPAAO3mD45WEMJR8DI6HehozuPk3C69iLmMtBm5aPnhfPuD3dRAd4hnBdKJy6UTdD
 Vs8H6Gcp7eQ6b7jRJ4fw7Q83WAxftqP2LmkteYGOaHRQSKbAmheKr8yllH9JMPeVYbLUBl6FEzwr
 SdeuO.ToGyZnpWru8WWCVxIsMGHTJQ2THcmGv_SZtwb4gKsM6Ri_BsOSl7cSjb3Ru_VQtofC17SX
 ifug.GYzf_E89tFQhFCZ.49CgqEgbc3ukwiaPn9TVlKp1p_E5uvbp2Tmj7v3SLkmjtVaUrFAEmmi
 _6y5mGm7HMu2XMcjXVNNE6gH5VnqQry_RNT_DNZ.kGRxN8UaNL8MVSDsFkZVBtC0KfHtlaBD52PI
 edXnlycTvC6bPy_.ykvzxp4ch2MqTcS559Y0JBGT6s0NMwX1UDIHWG4inLVUgnUKH._V2f6WduAX
 TJVPLfgtZmMcXa..NSTzPLUjQIyewQELdZ33I2KsWkcESy9kUUB2EDTjfCwjOTfNqDcqWlIO6q3x
 RqY3xKNL1IRNfp_Ltdqwm9FDYS88DlJpROlsVwq.9OYcLx9yh9NeO..USOUrN6tUopoSOtbIxzVs
 uq141.o3AV1KLOu9xDx3PZQYguzS86kmAVDRUdLPMbyBdHQMlJifpnoBT7ZZWl9FKJBh40dOSR3l
 zRP5Sd9yCvX7WbvOLvi8Eh_VTNxo4tqfeqTx4wPARpOY5g7lAp44m014BNDJl6Y6TBOUVDiyOCyY
 QWN5yPvPaLtlQapCtGCAjmRaebDdLMX7Lh0vsJO014Nx0Z43NDS8bDCzN_41cGWDa02vw84byrp2
 ywcgCZ9OfPl17QXNboDtZevuKzJvXfdXDM_GCcyFjL2Xf4.Bz9QrobEy7uhhuObNHesOzEoVG5SP
 c85m6Yypb5MZV3FdKcnTRwAOFbtaF1cQZglk05.fnJv_kJuHWOlrvEqg_31qb_I40Ng_6QHaMYua
 bLafcAEVLTJxYVAFDaRgdFn8jQ9FT2gz.Yzxx8U25N9j_UViPEaWjqDM8iEJmFh6dzcDeos6DVXE
 ezQLfnmexebclt5OrjiF.5FqsmaRk0a_Yd.LOncsU2ms4jT.Z9SjXpYPbzmQVPJ.lh6mOfRx8HJ_
 6pmYSstuFy7aRlfsRpmxf5CEQ.ewYRGNDaGYxHWCuMw6LydL19.jJiawiQ6L.b1ktTswz4rLVKuS
 4.m1f5ooSulfrtwnyWs3idbME9niEiDoCKWsREcPPo83SXpSDsiIYDCivcsfk9uouEYi8rQJLfd6
 wCPnhxZgfP8QmNAtAdLlye7ZqEPcRTYMpnmZyIiqim5XUQKnb0e.t3_PQDYzEyejYg3SYacuhlAc
 d.vxXNQcRKsOj5lnT_RfzrT.mz4F_4hS6V2KFjoRAG.URfNr1CMiCzU5RUQ6yYIf_yldTHJWvFGK
 5rBmRPntrJxpWrlrvE2A.prl1Xm_pam86bGCBLoLk067WnXuE6jncxomL_wyzTBm.WMLa3RNolD1
 H.VyyIzaLfV1ywoMwVRFYgxnOzpF9Sh4BI6HXAmZTvhvSt5dT8L5qibtsMBycGKLkrHWhwnRDbIs
 4P9okIu8H74kAxg2o14cEhKFwsGYvS3qFGSgcC6A.hwSWInqumosmEJTd_wvApoVru0aemynScQe
 AxKx4ngJA8nErZEK.DVREWLFFhaI3qfriYpw5ZTVj8Qou08yCq1WoVYjq1nk4RdNSEg28Y3KExQc
 tSPCqbhBBMNFLuQelOzKOoNmXz9h9GuI3lX2Z8_B4ED37tJMOKSm0aVpQoBW6KYP1E_yjOKg_hT6
 NW0ZYqD72a2JWViEQAMoGvQ8bdWOZ65CnLBG.K3QhhRvE8Ya87VEx4KpI8DbRa.jfirqT4e6XuqL
 0OquMzypuMdK18weZxYLtGWppbiJvtCmQniRHVxDflkg7AajhMr2.RGPnwx05o9WZ0p1xcyjELnd
 cASsZIQysM9Kct14eXEXvP8.QCobj3xBb
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.bf2.yahoo.com with HTTP; Fri, 5 Aug 2022 14:09:09 +0000
Date: Fri, 5 Aug 2022 14:09:04 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	=?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>
Message-ID: <715810154.701873.1659708544551@mail.yahoo.com>
In-Reply-To: <20220805102107.ogg3xokfrckvyeju@barbe>
References: <Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk@lists.ettus.com> <5aefd8b6-fddb-6011-290c-3055f5f1e5c8@gmail.com> <20220805102107.ogg3xokfrckvyeju@barbe>
MIME-Version: 1.0
X-Mailer: WebService/1.1.20491 YMailNorrin
Message-ID-Hash: 6WQDB5YHN2YB7PCUHMF4T5BAEOFWQC5G
X-Message-ID-Hash: 6WQDB5YHN2YB7PCUHMF4T5BAEOFWQC5G
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Decreasing Power at Higher Frequencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6WQDB5YHN2YB7PCUHMF4T5BAEOFWQC5G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3860061084911890488=="

--===============3860061084911890488==
Content-Type: multipart/alternative;
	boundary="----=_Part_701872_1300174283.1659708544550"

------=_Part_701872_1300174283.1659708544550
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 I am using 2944 USRP which model is X310. We connect the Tx and Rx antenna=
 ports to the DUT via RF cables. The received power at 5GHz is about 23dB l=
ower than the one at 1GHz.We adjust gain in USRP to maintain the Rx power l=
evel at different frequencies.N310 USRP has built-in power control function=
ality.
Hongwei


    On Friday, 5 August 2022 at 11:22:19 BST, C=C3=A9dric Hannotier via USR=
P-users <usrp-users@lists.ettus.com> wrote: =20
=20
 On 2022-08-04 08:50 -0400, Marcus D. Leech wrote:
> On 2022-08-04 07:59, henry.powell.xx@gmail.com wrote:
> >=20
> > Sorry for misunderstanding. I think this is my fault. But as i mentione=
d
> > my first question, when i say cable connection, i mean i connected tx
> > port to rx port with cable. To see the device settings clearly, i did
> > this. Also, I have b200.

Sorry, I forgot that part.

> Make certain that you have at least 30dB attenuation in that cable.
> Otherwise you risk one of two things:
>=20
> =C2=A0 o Severe distortion and non-linearity at the receiver
> =C2=A0 o Severe damage of the receiver
>=20
> The power output of an RF amplifier will necessarily vary across its
> frequency range.=C2=A0I would expect that over 100MHz to 6GHz
> that would be perhaps 5-10dB.

For the B200, there is some data on RF performance:
https://kb.ettus.com/images/c/cb/B200_RF_Performance.pdf

Hope that's help.

Regards
--=20

C=C3=A9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_701872_1300174283.1659708544550
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpa620dd13yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">I am using 2944 USRP which m=
odel is X310. We connect the Tx and Rx antenna ports to the DUT via RF cabl=
es. The received power at 5GHz is about 23dB lower than the one at 1GHz.</d=
iv><div dir=3D"ltr" data-setdir=3D"false">We adjust gain in USRP to maintai=
n the Rx power level at different frequencies.</div><div dir=3D"ltr" data-s=
etdir=3D"false">N310 USRP has built-in power control functionality.</div><d=
iv dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false">Hongwei</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><d=
iv dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydp86f00becyahoo_quoted_0537656194" class=3D"ydp86=
f00becyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, 5 August 2022 at 11:22:19 BST, C=C3=A9dric H=
annotier via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div>On 2022-08-04 08:50 -0400, Marcus D. Leech wrote:<br c=
lear=3D"none">&gt; On 2022-08-04 07:59, <a shape=3D"rect" href=3D"mailto:he=
nry.powell.xx@gmail.com" rel=3D"nofollow" target=3D"_blank">henry.powell.xx=
@gmail.com</a> wrote:<br clear=3D"none">&gt; &gt; <br clear=3D"none">&gt; &=
gt; Sorry for misunderstanding. I think this is my fault. But as i mentione=
d<br clear=3D"none">&gt; &gt; my first question, when i say cable connectio=
n, i mean i connected tx<br clear=3D"none">&gt; &gt; port to rx port with c=
able. To see the device settings clearly, i did<br clear=3D"none">&gt; &gt;=
 this. Also, I have b200.<br clear=3D"none"><br clear=3D"none">Sorry, I for=
got that part.<br clear=3D"none"><br clear=3D"none">&gt; Make certain that =
you have at least 30dB attenuation in that cable.<br clear=3D"none">&gt; Ot=
herwise you risk one of two things:<br clear=3D"none">&gt; <br clear=3D"non=
e">&gt; &nbsp; o Severe distortion and non-linearity at the receiver<br cle=
ar=3D"none">&gt; &nbsp; o Severe damage of the receiver<br clear=3D"none">&=
gt; <br clear=3D"none">&gt; The power output of an RF amplifier will necess=
arily vary across its<br clear=3D"none">&gt; frequency range.&nbsp;I would =
expect that over 100MHz to 6GHz<br clear=3D"none">&gt; that would be perhap=
s 5-10dB.<br clear=3D"none"><br clear=3D"none">For the B200, there is some =
data on RF performance:<br clear=3D"none"><a shape=3D"rect" href=3D"https:/=
/kb.ettus.com/images/c/cb/B200_RF_Performance.pdf" rel=3D"nofollow" target=
=3D"_blank">https://kb.ettus.com/images/c/cb/B200_RF_Performance.pdf</a><br=
 clear=3D"none"><br clear=3D"none">Hope that's help.<br clear=3D"none"><br =
clear=3D"none">Regards<br clear=3D"none">-- <br clear=3D"none"><br clear=3D=
"none">C=C3=A9dric Hannotier<div class=3D"ydp86f00becyqt8841082021" id=3D"y=
dp86f00becyqtfd64984"><br clear=3D"none">__________________________________=
_____________<br clear=3D"none">USRP-users mailing list -- <a shape=3D"rect=
" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a><br clear=3D"none">To unsubscribe send a=
n email to <a shape=3D"rect" href=3D"mailto:usrp-users-leave@lists.ettus.co=
m" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><=
br clear=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_701872_1300174283.1659708544550--

--===============3860061084911890488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3860061084911890488==--
