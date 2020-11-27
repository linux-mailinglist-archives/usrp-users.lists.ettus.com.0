Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 873872C6B9F
	for <lists+usrp-users@lfdr.de>; Fri, 27 Nov 2020 19:35:16 +0100 (CET)
Received: from [::1] (port=34694 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kiiaP-0003Hx-Cx; Fri, 27 Nov 2020 13:35:13 -0500
Received: from sonic310-24.consmr.mail.ne1.yahoo.com ([66.163.186.205]:39594)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <ampselectronics@yahoo.com>) id 1kiiaL-0003At-4g
 for usrp-users@lists.ettus.com; Fri, 27 Nov 2020 13:35:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1606502068; bh=C5hX5Ph4DJPYwcvQbpf/CwUyugbMzdR6j65idQY/4FM=;
 h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
 b=NBLu3PkhvoEl8/AznNK2nmjzGjZYf2mz12Hq63kOu4LhEu+e3uWetn2A5Mu97iyNFapyd44ZV8BbiVJJ1EKUbJlF0rUSN1UTu9UfZ4gBIyI8ft9iCB2wHcv/BPUg1E3+58sonWRIasMrECf4errBtdgOvHWtbVkN9dtsLRat7IZIzmhk24R891Y7nR2/lncwSgde3IYQSJgRVKCtjDjkGgWwSTshJChM6NiY7RJTq6Gt6z13Yd1T7zUOBGp3ygvEfUBFp+N+WgPQXpwlzLoV7Hba2487ViLteV0otHrpVMUVe2Q0NSuZWqX5E0YPPNkixjbnn9bzcVKRaqtkrHGytQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1606502068; bh=b53AgwZ14CBoXdqcoyK8hdiLQHStb20QiCwT42lsZtw=;
 h=Date:From:To:Subject:From:Subject;
 b=th4voPKIV/fdsqzboC1tKBih8oP4cViILLN2DoL1kJb/CPmXTxngbE/1JtkfO4pg9ROljFE1htjSNg6sH0d6dru0IhJ2OIne2a7nFXg9vX1PE5ct5XKaTvQ8VeVsk1SRLjcTWguUwDVr0fTFv2zEhWQoZPyVuWEuctj7jD78Xb0H22FK7/IaDBkv3PdGh60gHaHePp669H7eJzPnz0B/BpNRfRvwqIvHLlvkDMl7v3CiC/+gPBWIc3P+J3TjgOywEYtNrbqXpR+mQXfMUNJeowH/olpo7+vkTu8ICps/APvHKCgJELKPFbTB1+wis3UIK3hctcIpSrIIsaTfC3G6sg==
X-YMail-OSG: A2XU1U8VM1nMvx.wXtaAmn73PR6O7kLxtbtm91F5ApYZ2oLVtRoP2pthyhm_qqC
 i9IQOPs7EHwqo8cpPgnefx2DrSK0lmLepDjTb7pNMoY0gVH1q9ybIkuE8tl8oSWAJxoW481WjcKq
 vUeFdEecphcuxbSiA3yXADyje5Sn6rPlDQ.RGSvHH3Ti1zGJu4phrZ3k9qaa1ACqO0cPhiMpwZGW
 sZhip96mErR3Zt4NyD3ScN3LvHrHbrSXT9IECksCnizp_4L1eHbCtJlFhvvSooT70FEKR0ipkH7B
 oQxQeuj6yZCSE8pnGQs.MIdb5n3nOS4fDCpP1wYmKGjPkOGsP8jEQYWqoZItnGOZnrKuMSbKuoLF
 UaxqPnIJPCiApNzJ4nhMhXVUULtaP2VBatDPP0AYtWNofr_Bjq27nSXh3LnLqwupPAYZ54AgI2xI
 piJp47ePw6Zz15sRdMS4N77LmYxOzOUOW_cOypidGXi0porf_SUQyRO8RRHZXqVa.50Cq0LfcQNl
 UvRGEYza.aKe3l1tLlIz3JF1SAHyytngWzh9Wpcl1xxz4uPMy6hqJdp1GGqoL696aRr427yRxwxR
 OCxC5RwaDywtgXX_t3vOgIO7C.Eru0mDbyfF1VDcoZtoCyJMnkzk2lqAoockCx3lmcD7ttIfuldY
 0ZR6YijKepmn6iWj1HLodant4HTBNoeL7SX2cE0y.H.Evl9YfaRcJinwn0wjy92NHcsZ1TKc_Q8V
 Wr4sAEieuqm0oWsLgrEgcRYaQD7vEIdH_89Q5505OCOsUvcbAVRpt_qDCjWzg8_UYRqz50rZZus0
 ZYpaTbP_YyWSbo7N.vczdyJetCyYdDzJt_jBYGN_Z18GgrNm804ZlELK87A0lQ6nqzPjxXjkZRpe
 bcO1JIp3ewtR7B8Tjw.viaSJOHGjv87Yo1t7vlyFj743HVngj.0GN9e902YKmN4muNC7qrK1r243
 VlLgQdmqfJa.FxhgZpMeWaWQnHkpywCuoeisWFsnFKjHrTCA5txCv_BguzOVRlHuUX3VceI7bRFP
 s8ONztdseV2E0wGn_HicyxgXK8OdbgLUFRS3A.QzC16XFk5VN16_6.Mq1TsAi_BbsfRq6KwCvv2n
 WiogpvenvX92MqLK9T1ROp7WLC2Pc_F5aHMIWmW5B93U5AFjts5Q3h2MU1z3eCaNeKPKCeVUrX6Y
 aWx6zj2sUxU5nWCJ8y7i0rQkRyEtCZ3sxuBwN3AKSfuC0mYm17Ea.a.PVIadGMC3EcxsDTvmsu1F
 bzsTBbLml94JTuB6XIOUrXuo3fbjqQxyrcObGOGP1qFZItuMn85ftElV3AK7rcVMQSOphPiuY5OG
 fDWgf_GlzwyWEeRblcX2sJXUc_xpmv8HYmh6naI_fNhKEY1jZ2cDlP4_NHIg5KtQ7xcr38lUDmlU
 TO1NSQaHBAEfUsnZyN.v46jhnmT_Z1OSzjFjB0rLgzWuTk7jAvrV.IkBPTgFFNkubiEi8iFY8GXF
 we6wJ15z0ITSDnQDDIUNhD5XY7woOjHobdZXT6KaC9xaj_LNIzWzQTZqYRq17U8z6qqmmRq85oww
 NbQUtcHhl9TIIDfPD73r6qQksdlR4XcNuIobNgf.Zbpdv0XXSqyUPu_5LiLSrCVcOaCupEjhavKH
 2oC_HqZlQBxv1HkGfa_Gz58b9BZ0uHLFIW3hqBvPJFM5DeuQtI8uhhyk4zQjgEEoRt97G1lZe4tX
 9kOaISaUgor0bZX6kzhcshSkCgpm8SGYoE7v3pxV6ptq44LA8gzk9JfmOb6AbZEX0DcqHMKaZPFh
 L3AH9N25ROXBZ17ppkHUeWvDkMjK58b3PRhNICbxWTg8HF72MFS70wMzMEJ1Js3JWLckNzXMU7Lj
 xWM83NKMFaQlVW1ip0P7zeVnQ5n0sNjTU5UQT_qHPp4YJzulBydYKGtl6tkDP244SpTvd37nIBPz
 NJXNpnrg_99CE_5nIL64iwvB232APgJi94jENw9svWaee2J2v40pCxzI7dewp1sdVB4gINEYxTm1
 .fgXdK0U904Ra3HIgQAn9wX5AUskjaf.SN4zZUnOAE7shXsjpX1w3Nrfoh69xYbBXoZhVY0q.dIx
 jLLXhSZ3gI0aGwemAkQ0ty0WUL1d6saJDz1qjwkIx9yp0zVgMNolqFVNJI7Rvdq9vYJ1nePNp0Dx
 bAw..h7ultOQusAxK3SW9WBuRMuH09p2zHlpwVj1oGdDBH3IYvRZgUSY_tZt1ml3qG92fNbKOWr4
 fuD83uCzPVmvMgUZpUi9t279nIvIhTJTml8TvxS5AaQmDRxzrPyaoV2PJefSKC3xukg.6yUZSwc9
 Hf9AI5f9pQaWOhM2bDiALZ63EJ.WeoEtT096zoHufiBJLGQMlShf0um3KPpJEH8cmySgBmy2OqWZ
 tLaj43jNhpaRS8JJcxciXO1SZeTKUUzWkItF.JBRXFH9_rbaQ8dgWsfF6IU9GjZKKK2ITULTFQ3N
 ElFmywdpkI8cnYQiAfzIAbRJ8rCe4ZuGCllsfzIxTXIYDHno4oOnzWbPj6dTMs3hq9inw2Ky9qMb
 aH7R_iKEMeuL1WaK8BtNXqEffATME.n7.Key390b7r9EK4icIeLHCT2H2i7HjBtFazfDZalSn8IM
 tOI1l.Pp3GEX2RvRhqVtwlFBTljpbXprV_oZAKSXjoZ.J55c9HCcnryZQ6.g-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic310.consmr.mail.ne1.yahoo.com with HTTP; Fri, 27 Nov 2020 18:34:28 +0000
Date: Fri, 27 Nov 2020 18:34:23 +0000 (UTC)
To: Andrew Payne <wandrewp@gmail.com>, 
 Andrew Payne via USRP-users <usrp-users@lists.ettus.com>, 
 usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1129435812.2163671.1606502063242@mail.yahoo.com>
In-Reply-To: <CAB50+dTqG7GiBOn=3vBMu=n5MNS-XvpJqsw_QryGkjeP=OWQkA@mail.gmail.com>
References: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
 <82C8BA12-2EC5-45E9-9446-1890860A8F30@gmail.com>
 <CAB50+dT2ah526Vw7gp7q0UYNw5iWA8zt0Gyx0hOhhSF5F1Lxag@mail.gmail.com>
 <CAB50+dSFc_DDhR=-dyN85vGG_utfRwhc1Dvjciv_q3K6U3_GcA@mail.gmail.com>
 <CAB50+dTqG7GiBOn=3vBMu=n5MNS-XvpJqsw_QryGkjeP=OWQkA@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.17111 YahooMailAndroidMobile YMobile/1.0
 (com.yahoo.mobile.client.android.mail/6.15.1; Android/11; RP1A.201105.002;
 flame; Google; Pixel 4; 5.4; 2148x1080; )
Subject: Re: [USRP-users] Fwd: E310: Change MAC Address?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: aneesh patel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: aneesh patel <ampselectronics@yahoo.com>
Content-Type: multipart/mixed; boundary="===============6162139408309208774=="
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

--===============6162139408309208774==
Content-Type: multipart/alternative; 
	boundary="----=_Part_2163670_1327903896.1606502063241"
Content-Length: 2905

------=_Part_2163670_1327903896.1606502063241
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Andrew,
The MAC may be in the devicetree blobs in the boot area of the SD image.
You will need dtcedit to decompile, edit, and recompile as needed.
Amp

Sent from Yahoo Mail on Android 
 
  On Fri, Nov 27, 2020 at 1:23 PM, Andrew Payne via USRP-users<usrp-users@lists.ettus.com> wrote:   _______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
  

------=_Part_2163670_1327903896.1606502063241
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div id=3D"yiv9324273831"><div id=3D"yMail_cursorElementTracker_16065019474=
41">Hi Andrew,</div><div id=3D"yMail_cursorElementTracker_1606501961843"><b=
r></div><div id=3D"yMail_cursorElementTracker_1606501961992">The MAC may be=
 in the devicetree blobs in the boot area of the SD image.</div><div id=3D"=
yMail_cursorElementTracker_1606501977942"><br></div><div id=3D"yMail_cursor=
ElementTracker_1606501978063">You will need dtcedit to decompile, edit, and=
 recompile as needed.</div><div id=3D"yMail_cursorElementTracker_1606502005=
689"><br></div><div id=3D"yMail_cursorElementTracker_1606502005800">Amp<br =
clear=3D"none"><br clear=3D"none"><div id=3D"yiv9324273831ymail_android_sig=
nature"><a rel=3D"nofollow" shape=3D"rect" id=3D"yiv9324273831ymail_android=
_signature_link" target=3D"_blank" href=3D"https://go.onelink.me/107872968?=
pid=3DInProduct&amp;c=3DGlobal_Internal_YGrowth_AndroidEmailSig__AndroidUse=
rs&amp;af_wl=3Dym&amp;af_sub1=3DInternal&amp;af_sub2=3DGlobal_YGrowth&amp;a=
f_sub3=3DEmailSignature">Sent from Yahoo Mail on Android</a></div> <br clea=
r=3D"none"> <blockquote style=3D"margin:0 0 20px 0;"> <div style=3D"font-fa=
mily:Roboto, sans-serif;color:#6D00F6;"> <div>On Fri, Nov 27, 2020 at 1:23 =
PM, Andrew Payne via USRP-users</div><div class=3D"yiv9324273831yqt97009721=
09" id=3D"yiv9324273831yqtfd76309"><div>&lt;usrp-users@lists.ettus.com&gt; =
wrote:</div> </div></div><div class=3D"yiv9324273831yqt9700972109" id=3D"yi=
v9324273831yqtfd75655"> <div style=3D"padding:10px 0 0 20px;margin:10px 0 0=
 0;border-left:1px solid #6D00F6;"> _______________________________________=
________<br clear=3D"none">USRP-users mailing list<br clear=3D"none"><a rel=
=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lis=
ts.ettus.com</a><br clear=3D"none"><a rel=3D"nofollow" shape=3D"rect" targe=
t=3D"_blank" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com</a><br clear=3D"none"> </div> </div></blockquote></div></div>
------=_Part_2163670_1327903896.1606502063241--


--===============6162139408309208774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6162139408309208774==--

