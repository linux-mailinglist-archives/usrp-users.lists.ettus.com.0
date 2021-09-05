Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C514440108F
	for <lists+usrp-users@lfdr.de>; Sun,  5 Sep 2021 17:29:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 443AB383F7D
	for <lists+usrp-users@lfdr.de>; Sun,  5 Sep 2021 11:29:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="l28dLFgF";
	dkim-atps=neutral
Received: from sonic308-2.consmr.mail.bf2.yahoo.com (sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41])
	by mm2.emwd.com (Postfix) with ESMTPS id EEC68383F54
	for <usrp-users@lists.ettus.com>; Sun,  5 Sep 2021 11:28:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630855706; bh=DsZ7/hvs1gK8MSTLRNv9DZi7aT8krxRBZU13oLt8+lk=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=l28dLFgFAjPnz2q2FcR4zsVACCAKsfaO1R2tmxyVVEoCJBHrNxgJehmQ6xl0ZW1ULZNlBqfN7u+6qkDs/g1fGUnBENGmmetR2N6LXuQTWpzYfM/XxMSap1CP97xwrQSwekLz0GF6qLd3z3q57NB8B9AA8NvL+acJzQgMVcD3epJCDhr45r7oZSyc1q47vnH1VuTpWzOSlDwUff0UaxRiHdKJuHvigy7nWTBgOLHBhFzqIClz03iqAkDUBWerZbfDz4VGVlMF5ribUHipuEEqJ6qxFGqmqOosFDv+F/MSdPd0H9R9pOe4DJLRpUqTkQPJ8Isd1yGSXIAii9Ahc8JIuQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630855706; bh=1I3wPmSAUZIPLjuXliHHpA2u0Oi4osRUfz+hvKWzEfJ=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=ryfnWEmBC/vQ+cs7B8eo3i5P4yxfCggYjr8HqDRORZIi5hDbCPf843wvW7DnzM+2B0WcVbldrocVqnI59yXfHY4BPARGdkpKRM1se6r1trQP0YgO+8tGwwyNv8p5r+YTJANGK8fDn9iYp1bQmSkXvmT+zx6uAFjXAwhnhKYvbiehO7PZmDW47YWyFW6yEIn+liFBEpfLOedLdA5jWcucO61IdPz4nprutIdoKyWBpnrlsK1JWBHX8KNfv67hexL/18AmeWL+XRZPFZUGQAEcdI6wjWGJnOq/igJmvPttIY9A4bzN14MfBdP7n7RKlwmb5N6BylXt9vAhO+CeAteb6A==
X-YMail-OSG: yyq4qJ4VM1nRkBhiYUT8oIVjGF00Nz7fKoHnT3YQrCRUNABCGobpq6mZ13P8fIk
 Y7Xzo_DF9oIdViHzWdZfY.S9DVYNh6EwEYc089E_5HhFKhMnSv47jwyP8MMHxA3uMXP14_zg1Mgs
 4Pl76mOY83RsoomFz0W.GHEZCf6JflxScNy19uSpPj74h.Px6CQtUg_BljHm13DjJ1aGPauxKtJV
 XCmMly7qDbxOmk5wW_P6vD6ohm49G0P3htRk5QydvmjRQoUSQJiI305GImznSH3rZSWNVplLrHQH
 S3IIILJzHOImi..xqZlHvmdmMnTZAY3pMVkS1nat.kQfMUE1qWiw1zNe6T_L3tLVpii5P5bAQqN3
 0e.8HZeB1oeuXsyBDinXxTPP9mQANHSHcWDJ4XC.AYageV0SH2JCEEvxwUvPL8P3nNSjcrwgCPSd
 e70avsf2066DJAxhrNqudccm_302i0Xx6g4Kti7m0YcpQkTjaCqj8A1eOz8LuEqH8fA9SRYQktKK
 eR6fj393.Bj_yKvXh1FEqdOk71z4eMdRPUWRH6fJmooux9VEynCYPdBo4e8qI0g1oT5p876at8qm
 hV71o9ZHVW2_5_PdGcB2h3VMUFqA77s3AvPj30Dso.s9Cs81tRYONJ2A65vuiHHEJc8Ziz6sR7wK
 SaS9.xcQJQ5rJIbbR0qqBju2PnhPzUWV984hbdQiP6RJo5FXABXAjIxhZtNQi11SqMC1N8rlPtW3
 apVz1YyKM4x8o4cvjxh.4jnCVy8zKpx_1AkEOzHr8qQqeIpbLJXRvGdnHu31YN1DBglexQhWeXoF
 a25a7qBkSUPf0JJxuzPqiHBgore.6QTkYF8fbvHnp0wIk2iVCW4UkJsfWRFf.UOBmahqHcdueES.
 6vj7sChHHA72MqdryhAiMhDkA6BiIXWFaEzUNrYEPmfSrYbB5Ox6NK25jJbTKPBjdLrqL32jwOr6
 EcAhxz3gNSCqV4twNsL.ADdX3mhRz7oWbCbiKOe.3s1a6EMxFlw.WVSCmklIqWT1fK4fqBOwCLIp
 gFVarR6oY1e7jVBAAzFy_D9bOzo7oURO4_JD72YKXwGqCkFoLvnHhF63EZeRveF5jiKK9rvDL1A8
 HV3lgYnlVMiWcU3WjKG8DbURGE9sTOgG1yZhgaxAkUPxUzg7aiWtMNqjkUmON.nbg2Vc8.Aycws9
 TLYzWGfnOCxDzVlaW0qR72cuKerVtMsk5k609hnjVDR8j3lRjZJ6ir5jkjTdpDhmp9lraBR16zM8
 Y3o8.kRHlymUW6a9Xe1OvrTNRvyBy4fffWXNHANy2kDvXlgXCdZkFG5auO7uAIK3II0nh4NBesuT
 g_V6z.DJPDe2OfyXQkqCtfEW4pE0EMa__8gyL5zJLazOf29aJuNtZWx82Vw5iw2Hrgo4kypXv8_n
 cD4x_gbRPGQh40S01TVnyQTDwyc4jXeaJihU5X7BdQM44IIw7e9YWFSNlzkNPV4VAczOVsrs5KGc
 e6TTusgjXv386up5cDC4hSZNsQiqHdvOmmQhxw6szDMpOKuYNEg9oxFTnN6k_gkFPM3wa2K3UdzP
 9E0Oten3YiTlNir.XfH.967FLNiTv66waogRUM27JSc3.ltJaXKMSI0haVhpiDJp.Y3acGa20iml
 fv5w6BA_aslI77oNsL8h9l.5z0I7bIgITCIl3WlpWmIAcfRF8FB51BMxpCdsi_GoGrQxCrWwke.S
 8.fvMuRXtqn523uTec2rLeooJE2WenX9Nwv6cFU7Kp6kLeeRjgK8olCuLqAjzICTjc9XXOyRniFb
 q_vuJQ1rw41mYJrDMhnYBKXoKmwPwmSCd.Rr0hatM4JHixE2TlKs8lhzSGzAN7fUsi9s4gZuXX64
 va.H5uUcnSvpeABlxC4qeLWZ64s6AlzijevsMBzGkmg2Z66SzkZsV5jHgHkvUp3iw_PMuSbVn1Ab
 hYw8OzlmvC2cTXZCbS_KEH78xysnzCfL9OL7MAwzjNHbWP4EdViwp2obSTo1qJj7K_tR9J5HeADr
 tFL7MHSVp66rlkc9SWxZ9uyPDg4qwHPQxi8x.5.zXkbKKMhdNeAvSFEjY7OPuRZ1lNUzOfz7tWAY
 AnkxtgTzKxxKgMOisVoBhnwTwnp_VoPOBQKkZb1ebT1g1OB5TvpqK75lAP34xX6nIKV.Xl3jq8TN
 bXY9ovDvXPuD.jZGHmpEPue5u5CdqXgn3hLMoi_BhvULgNTeuDca0OFzeYtmVoE0pK3sekkHGYhl
 IZ8l.i952M9k.qYGgRw0f7wPoIQkgsLGoDQ--
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Sun, 5 Sep 2021 15:28:26 +0000
Date: Sun, 5 Sep 2021 15:28:23 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <78915145.1401871.1630855703615@mail.yahoo.com>
MIME-Version: 1.0
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: SEHXD4EVLOFIFK7VKGDOBSDDNWRMEXJX
X-Message-ID-Hash: SEHXD4EVLOFIFK7VKGDOBSDDNWRMEXJX
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD4.10+X310USRP: Error in Rx in Final Stage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SEHXD4EVLOFIFK7VKGDOBSDDNWRMEXJX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============0516840983796422434=="

--===============0516840983796422434==
Content-Type: multipart/alternative;
	boundary="----=_Part_1401870_2043964908.1630855703614"

------=_Part_1401870_2043964908.1630855703614
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,
I have a problem in using X310 USRP after upgrading UHD from 3.10 to 4.1.0.=
 I am using it to capture NR5G radio signal in UL. After analyzing the capt=
ured signal, the quality in the last subframe is worse than the earlier sub=
frames.EVM =3D[1.014, 1.08, 1.055, 1.053, 0.954, 1.043, 1.145, 1.112, 1.162=
, 1.072, 1.131, 1.125, 1.038, 1.08, 1.003, 1.1, 0.972, 0.941, 1.046, 0.917,=
 1.01, 1.023, 1.025, 0.982, 1.101, 1.044, 1.089, 0.987, 0.923, 1.022, 1.012=
, 1.009, 1.021, 1.037, 0.998, 1.112, 1.112, 0.981, 0.987,=C2=A02.785]

When using UHD 3.10, I had no such problem.

If I deliberately capture one more subframe with UHD 4.1.0 but ignore it wh=
en analyzing the signals, I will have good EVM.
Is this a bug in FPGA for UHD4.1.0 in X310?
Thanks for any input.
Hongwei


------=_Part_1401870_2043964908.1630855703614
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir=
=3D"ltr" data-setdir=3D"false">Hi All,</div><div dir=3D"ltr" data-setdir=3D=
"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I have a problem i=
n using X310 USRP after upgrading UHD from 3.10 to 4.1.0. I am using it to =
capture NR5G radio signal in UL. After analyzing the captured signal, the q=
uality in the last subframe is worse than the earlier subframes.</div><div =
dir=3D"ltr" data-setdir=3D"false">EVM =3D</div><div dir=3D"ltr" data-setdir=
=3D"false"><span><span style=3D"color: rgb(23, 43, 77); font-family: -apple=
-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, =
&quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, =
sans-serif; font-size: 14px; background-color: rgb(244, 245, 247);">[1.014,=
 1.08, 1.055, 1.053, 0.954, 1.043, 1.145, 1.112, 1.162, 1.072, 1.131, 1.125=
, 1.038, 1.08, 1.003, 1.1, 0.972, 0.941, 1.046, 0.917, 1.01, 1.023, 1.025, =
0.982, 1.101, 1.044, 1.089, 0.987, 0.923, 1.022, 1.012, 1.009, 1.021, 1.037=
, 0.998, 1.112, 1.112, 0.981, 0.987,&nbsp;</span><font color=3D"#de350b" st=
yle=3D"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;=
, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &q=
uot;Helvetica Neue&quot;, sans-serif; font-size: 14px; background-color: rg=
b(244, 245, 247);"><b>2.785</b></font><span style=3D"color: rgb(23, 43, 77)=
; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Rob=
oto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;H=
elvetica Neue&quot;, sans-serif; font-size: 14px; background-color: rgb(244=
, 245, 247);">]</span></span><br></div><div dir=3D"ltr" data-setdir=3D"fals=
e"><br></div><div dir=3D"ltr" data-setdir=3D"false">When using UHD 3.10, I =
had no such problem.<br></div><div dir=3D"ltr" data-setdir=3D"false"><br></=
div><div dir=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" data-setdi=
r=3D"false">If I deliberately capture one more subframe with UHD 4.1.0 but =
ignore it when analyzing the signals, I will have good EVM.</div></div><div=
 dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false">Is this a bug in FPGA for UHD4.1.0 in X310?</div><div dir=3D"ltr=
" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Th=
anks for any input.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><=
div dir=3D"ltr" data-setdir=3D"false">Hongwei</div><div dir=3D"ltr" data-se=
tdir=3D"false"><br></div><br></div></div></body></html>
------=_Part_1401870_2043964908.1630855703614--

--===============0516840983796422434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0516840983796422434==--
