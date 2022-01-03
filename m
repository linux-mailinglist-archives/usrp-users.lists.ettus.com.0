Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C92814837A2
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 20:38:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F9CD385386
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 14:38:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="e/46BWGj";
	dkim-atps=neutral
Received: from sonic315-14.consmr.mail.bf2.yahoo.com (sonic315-14.consmr.mail.bf2.yahoo.com [74.6.134.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 94C0C38511B
	for <usrp-users@lists.ettus.com>; Mon,  3 Jan 2022 14:37:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1641238653; bh=1jUczrCDwokgtrn9Is24pC1kv9+SSHcJ39tH9kJc4OI=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=e/46BWGj3I7a8GPqZ7a2djbStUQdJu73rDlN8pm1/AjSLOieGAW5RIi/rjet6vqj9fX7eKB/p3gg6mOKHmfdPsm5u+XuHMjDyJV9c7WbVRq8TLz0V9GxMVZIzTchejZVF1t2HHIF4vHVBrazNpGn13AIPiOwXNqAf/4ZKRnBXL39sKgPje0m3sFxvxdl1taJb6+tfH177IBkxZJGwpjJfaeQ7Lphhk838HcVr3VZJdTbqlSCEbCEFdxai6c03hfGFlgyN75q+l9PmB2kaMALIxYDZ4RWhoKRDDo2lkQdlWBeqa2BWHtuVvCPmXbDftl/bOtmLfa6HoUKgX6/erzswg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1641238653; bh=rlfKYjY5bVReHPqXytMkCQRXc06KCLa+jA4dWrKkclH=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=jyjR0F52/AzMBesirZzwXFz3BnN1rp/Yy22vlkHPEbP9oXJkRxwUSSTus0F2gup7PCmcqPLLxEGo5zmxFarOnjk7ADIrIlJXt/cgs1oXbo/1T51tEXu5FarokKIv6fW3pMgtuc4KQffoe82KKwkI/Ojp+Nq5duRxXWrATsrX54dsLv/ftNCiey9yogApc5bJbN9Z5nbfSQVvDes/R1uXAJksBEHewin4Ut698T0ZLN4I9Y+esq9dSz8p56n2r9KYsrVaxBos8ui7lqetVlM151IWpx4GdM2dLnnsRC/DOsnf+H1URTYCwbX9NN/NtmvH7wnMTXsFGUGePzcBVDtmEw==
X-YMail-OSG: ujo7pesVM1mOmGZTN1EdYjluOHatmPpInbqR0w.DqFE1CvM2gJklhfHD0J04MCt
 1ouYrvJRfH_CykaVBX62LYYiLG3zCgOVPJa5s_.zMUDgq9YJx5W_asoz3CiJF2Pldm6ijTEe4_Wx
 gFQCuNZFafeDnDLVOAM9o.8CJQa2Xlqitdwy99BgYvrt8jY9lhTVYOWEhGhWjp10V0QnFp_97d6b
 s2ZYanoNDdskzvKG8KihvRyG0znKwWmuDng_Qnh_hkPoMgrN28LV8aqCYUkgoon74fZpBS77bXt2
 l9ucaHnRIP.vLrijCA7Qb9BlBpSO4FGJS7coVfIgedhx1LK9wBa0k7kEvlRCBTz8ggZQVEGtFQ2D
 d2_MLeiaMMLaSNnhywvo4MHid8Ng4Efo31SU62Z0gSaEQQ3cYFfVdQSb_Ob6IdVXrYgtFzrK0P9Q
 dr1SUYt0ojBEUJ8k796vxcCzQfze01c2wC7xTwApODR5At_eKxRqbQ4oFRM2zr5Yft5NdnapgJUU
 G_nyeqj56aCMAPqcohwXqD2RwZYmaNy1mOzN16YiIslyuWFIzeJRKhnTwoS.7dgLfQF2z3XR0sKF
 bJJplFv8OFAnF_7WczJoJf4z8hqWK2dclJDkGlB9Gdw0T8tvltQDDMvp8xAOqOtx48FjX5PZxhEc
 9Ny8_PYmONohS5TKAFC7T16ALBb843dliqMmDv7gJgrMghsqRTh9A4WoraP.1AzDa936stpkbZ.J
 Wo8dUfezwXxVYNY_CHLygvXykkxAAUDkfsla0ebTlM6eYAIXfeI8U29BdJ_XCfBCmMqEF0xQ.3Lj
 piIAKuUazuzj_C6lwBtDCuNupAnwER.bAoNbzdHhqFBoJ3rMZbI_MfV.oU90dn1viVwE9xRI2Or6
 ZbNr7OYPYzB8pHucp8HcXeWNL.k3K5Oc62LO4N7uA0g8n438JvikihDykUrN5ub8SuC1ZrnEQYhF
 iW9UXTrLct7EfuXWwgazEm6te8syeBWHJFJ.5WGNdI4mSHIy3_fChWi2r7j4wllH6lmtIfzuQMkc
 hxaWWQQLj8ZR_8u5_b3hnNLAhHoG6pBjamK8LPQ06TehhyAKpXDcUOXs2mzkUryclsbVo0pEap5I
 grzY0m1KuPPhr4t6yKGs05zkPtBKyH4mtp4PwpQekbojbzVxcYjya_9LkESVzLkrQvaVvyOy0TXo
 bKAXf224Oud4gzsxzN2KzPG0qlESqd9Z2OegB9rF77fgIR.enW3XsEyJVUMi412a3QXyjV8hWZvJ
 Z7rl1XfSmtGQddIpohULGnbilxKx9TVk_m3ISDvrV4gUr9KfVYozV93iA8CM4bX_PeQelg21y21s
 uJjyw1WO7ONJeOExiZQou0spT5yTKusVBISd7Uq5lYL8H0ewUqZ.hNhQpt20W1njKp25Bb6G4K.t
 Mv1_s7jAUmbySNyswkNEgRXT9n08fTaMw2foPNpN0D_all4_IEnCSigk.XSEVIslLv490tixFENU
 sm9Gjo3SNG9vNbB_jxgYxjVwUDp1g1qEB5K9TdA7SwCvoQX5n18YmBRpJzGkqCgiEORaUmj34Ooe
 Uoqh4U1q5x7TMzjfJQFgMUYVU3HJVjkOSe5X0D3.Re59B.zh14eR4lCfBs3q8Li237sM.Qykuqyi
 .6rWOmSnG38wr2ml07McZknVLiK4iFUhAyUfjwoMWtMAEkFEYn4tMPzLu4zRMr9DRy1K8Vy2Na.V
 8QeWOn.t1mGyKta8PsFy55_UqAJB2a3M1_5qPfTyHioluDDeKl9XOJ2NSRc6njjmLr8AkHCBUH8i
 sn3MARwJkSITUt8cHh62mtkJDnbysYg7m_0I2d4_73XLmiReTD9LldAdxFCjIc5rSuZoXu1zRL7H
 9QIjm0HrwnsYS0sYWNYBEvv5OiFwgVtYbzHawnl6dAaFm78PiVd3Y0FgS7wL8ab93T3D4jGqZMJx
 mxJl_enVQqdZY.Sbng7.CjKvqRLAGxXaydvb5ukfWXvByt2wN58VtqAeI5N6cm.UAzhoknzjXupW
 rZA8rPH2R7UkWBq.HnKOMF2PyGJCQ6OV2jc6foevtntIblA4QDJR738VcQ_SjrgNXVnpSPapjdUm
 3bQ6a9hsCgLzNxnSZuWPEbCIhetKnyCcyVbQPXm2_djbg3Qc2gxMKWtUzSjjuD5L8N9qAYAciWwq
 F6kujiMjP_rndFQK2U9yTeeNhgW2SRPwYFz68_VgVGrsubazLcCyyYM5p5ZDwrWQ0klYzFpa15RW
 wLBuhNhAfKiKvkA--
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic315.consmr.mail.bf2.yahoo.com with HTTP; Mon, 3 Jan 2022 19:37:33 +0000
Date: Mon, 3 Jan 2022 19:37:32 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"seckinoncu8070@gmail.com" <seckinoncu8070@gmail.com>
Message-ID: <878328666.767920.1641238652726@mail.yahoo.com>
In-Reply-To: <KItYKdwCb5C30mD2PHY0E8Sjb5MRqgdJwxIIugnTeQ@lists.ettus.com>
References: <KItYKdwCb5C30mD2PHY0E8Sjb5MRqgdJwxIIugnTeQ@lists.ettus.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19551 YMailNorrin
Message-ID-Hash: 3YLKW4DEDR3EY76UWKUZNDXGAMQK5OFN
X-Message-ID-Hash: 3YLKW4DEDR3EY76UWKUZNDXGAMQK5OFN
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO leakage cancelation
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3YLKW4DEDR3EY76UWKUZNDXGAMQK5OFN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7103218054854400711=="

--===============7103218054854400711==
Content-Type: multipart/alternative;
	boundary="----=_Part_767919_1718098693.1641238652725"

------=_Part_767919_1718098693.1641238652725
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,
In my application, I also saw LO leakage. We have many USRPs. Their leakage=
 can be=C2=A0different . One way to avoid the impact is not to allocate dat=
a around DC in baseband signal.
Regards,Hongwei

    On Monday, 3 January 2022, 10:31:52 GMT, seckinoncu8070@gmail.com <seck=
inoncu8070@gmail.com> wrote: =20
=20
=20
Hello Marcus,

I did the calibration but it didn=E2=80=99t change the results. There is st=
ill LO leakage on transmitter. I attached the generated cal file location a=
s a figure.



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_767919_1718098693.1641238652725
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp53a63021yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div><div dir=3D"ltr" da=
ta-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">In my =
application, I also saw LO leakage. We have many USRPs. Their <span><span s=
tyle=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial,=
 sans-serif;">leakage can be&nbsp;</span></span>different . One way to avoi=
d the impact is not to allocate data around DC in baseband signal.</div><di=
v dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false">Regards,</div><div dir=3D"ltr" data-setdir=3D"false">Hongwei</di=
v><div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydpfc9d919yahoo_quoted_2053429612" class=3D"ydpfc9=
d919yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 3 January 2022, 10:31:52 GMT, seckinoncu8070=
@gmail.com &lt;seckinoncu8070@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpfc9d919yiv9473235103"><p>Hello Marcus,</=
p><p>I did the calibration but it didn=E2=80=99t change the results. There =
is still LO leakage on transmitter. I attached the generated cal file locat=
ion as a figure.</p><p><br></p>

</div>_______________________________________________<br>USRP-users mailing=
 list -- <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send an ema=
il to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br></div>
            </div>
        </div></body></html>
------=_Part_767919_1718098693.1641238652725--

--===============7103218054854400711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7103218054854400711==--
