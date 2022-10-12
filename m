Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 745245FC1F2
	for <lists+usrp-users@lfdr.de>; Wed, 12 Oct 2022 10:25:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13E61380AB8
	for <lists+usrp-users@lfdr.de>; Wed, 12 Oct 2022 04:25:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665563140; bh=om6XdRRe727FgBeCD3EYjDyBUMwLl1hFBZt1MpJY7y8=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=LK4gP6IrV4e/zzRCuauUciQATB4dQGX/Vskhb0V7wBerHUnLGsHRX3MVs4/oZQSkX
	 32YbOgIDRFEHxrMs0O6EpXvqBKKH8EPK1GEWLlyQXnbCFTL3FjN4gnkLu3iMeceDyw
	 5evAuqTpVz8AGy2eJ3wsNjA6FD90Vmt0LJkJG4jWbt886PxqUNAM8iqvDy828/8M1B
	 JTP+6JuxOT17jybhqRS3H0I74AAt9+tFpaeif+GznnIn453eiQ3ppX56oBzF0GM2Es
	 oxOAOy2xWVs1xHopKjqLK257PqYn4Ytyw/Zt1roJyRTmrpkOgxMmcgoP929h0tkN5S
	 UqNnlTm76v+hg==
Received: from sonic318-28.consmr.mail.bf2.yahoo.com (sonic318-28.consmr.mail.bf2.yahoo.com [74.6.135.83])
	by mm2.emwd.com (Postfix) with ESMTPS id EE51E380AB8
	for <usrp-users@lists.ettus.com>; Wed, 12 Oct 2022 04:23:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="ugwJOuPp";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665563028; bh=MXB9kWMwZVVMopVL2NK/Nvnmw0WqV0ZNqP/KL+QEPR8=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=ugwJOuPp5cBASIuZY5hEvB3txCqnMMlDsuAcpeKk1qGIFDgSAzPNZMZkMxbE5LPsyNSfARbeaM6sORy+pPXWIpn6TVs0gq2LakwRP0k7Yp3BCKb9dF0qBqWQaiQ56AHL0C+ImLVx+I7k6yOngHQX9kJMIphqWxT7sk9OHl75vVNBav0x8ASDQrVrlTzN/us8LwXPrHUcgzep7dYPsHTODUiasvnrBpcxXXFIS5apyfm/oH2h/hcjpdTiEeEKMKfMD7QmAKnkkmGprZS1EL9GAB2bWv9BI0eJsB3hvf5oyxJmHjF5R1p9e0fM9i1OY9ksc4Za+WWNRFLutdOzzu56KQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665563028; bh=r5zbcdvRMEJ6+DD3P43zSCjGGZmCLEx8Wzua0xXmYu4=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=EZfY4tfvmy0FpZm5CPWex8RHThNkDsVKtIzWLONZBMJGl/jxnUhq+Cdfpi4fWxiI14Y+dkyTq2IlLPfFyqkd9a7X8HHBtz6ySpIizt7aXX9HIFe8oTqQDnfa3mu4jCTnPvk+FQ5cFreysiLFDZqa0aJK3yBoL+pIW3bTMEnrvamCVXkGwJV1HnoRji55CwdRDQ3ajxfv/WMfaJPzevcCx5EcG2KzvMAEHuctm3oD6qIGRGIZAUJG9UG5XyhcOeF7s33tNsQ9VWPlroUIl7SFrHPMts+RSNLIORhaPI6EETfn7ufg297L+o2d8IUmd95Fm+UDh7ZPt7j1/MaxJQXqrQ==
X-YMail-OSG: u332BoEVM1liT5J3cUy6uaLmSLf3SH3hQJqRIm7KcOeMwTAj0Gg_6Ifx.ZUuLf5
 rlfYROPFTL7BHaVmxgcSD5NTWzQwdc6nsijKcqzFnJR_E0lHow6MzA927.nedu6080Q_6vlJRGjI
 oAopyanknReaal_C7Vqh5RghnWfzlu6KijyAbljIufT0S1Uti5rZb1WiVRQGyQrJWWPafBVQr.7d
 EsYRX.7C9pyMNuNi2QzNuLiiE9BAM5Tam6Rb.dV2qRELdqgTzYMlFjJyXuWXJmzVdGW.VXCBTa5E
 XYqQcVXt7r60E3w5dvX9uT6jQOJtvvLWME94IR7qEVECSPjKQjwk49071Fuduwnd9P9ReAVMTrIO
 VNpCEI4rDUBXk1AHAMMvmhb_LxXNA2x1iWvqAA8uq_XxNnGo99s2rxp8_Op_Jc.yeewx95sR68Qz
 bjUWnVa36WZXUKDojLzmJZTAQmpDS5ceQ.SsVq9c_GeQdfPjIql2slYI8tfc4WgNkTzdFpZPGRlM
 jA2hxJzYgHWzbb2VjM7Bwk5ftNa5Nx.ArAyLAN1rX5HRWweqptUN1pMV2DwRX0KK2aZGRi4.bWFf
 MUKGqxzVKhCa.6LgrAdFwmunEmfX3AkI6PbI7auNPtuzUbhWC1UZ7oCUTeaSpPg76MbF9rATCr8J
 yp2iMdBzpowB1SqgoXbbw_Hc_oZM2jQbCV9fSqzYhrNXqrsgrkXCIunWMsaLT6JLXfJZkSlYh5Fy
 AAhcLz4oSJyZZi58gnEyTC_chgnM8hx2lN5dCyQuJO50EshMD23ZrcxF_vF.sXqiWELWpJqAFzfZ
 g0HvllXl0ZbTCnKLgspCtWVdWYB.iQuJ51P_p3tNXKfDm2T9NJm0XgLHYC9gO8g1JcyOUTqN_hPA
 8SZ8DERpS_AX.NibJCcb61CeTK2Q6VRM8RX0i.mzQJeSO6X0cykqtYv9uEaVt0do8fpy6jJ1J449
 j.dssvt7dZ3dWUD0BuVyp0f2SP2t3zTB7R.ilaEdDuYnrrQRO53A6A35oP.CdxlRBlaFt9hG1yC6
 D.y8Mdcm81so_EyHW9.44FO3FQQEiAbuRz9lOX0np1WYFSI1DhyN65fUkP9Hp.7Kq.RImgvtv7N.
 59UXZvjkSsGJ.HuFf9OnzCQ7UWL2D4hRcJ2QK0grEdQ_MDdEfZixnJn6iWXCm4TX5BaoFMN59NZ4
 ogXmpuufB4yR27yfjC3HAqZ0korz7IIXMttlCssvV2uSfwsDWlQfLoGXEAF8mmFA9Jns6YP1N7AR
 f8VVlyzeyFJHLWeZW8NNZRGfF68ofHagLamp6_UpxED6lgfxAoI7PveOT2rJpyDoEOaGmnwxxm0V
 LYVK7.FoVXghfpgyciidGkJ4taQ3MIFI0Nbsq_34nnATzrgTYnumuYO0_x0shv8wuy9tIVyofcJW
 YXktHCVaxSgYTmRvc3QFDJUr1fP.eOcmjAVj.fj9eCDKqXYXEkHhBiMFlIBHjrPMN.eHU15a.8WN
 o0iyD93TLmNERqjZDDRm01CEgk6F40RykZrijzszxoxYlWdnzatpHAA6ChEdBmCtVear_MborKzL
 _MN0YJxYeAqg4P5yv64B.HKSDcI4LcsvDEIx4fFytZCReTIYwUn6ipgv3BwPsZT2ctWpcFnATE_2
 sOcj_9fwM2rl5LLdIuRoShsGRDgtxkLvWXaKt8w_w9.GXfEqufE.DJ_2IJA4W3jVm.UMIQqiKgMm
 CG6WfWJPQTd3gwhKSH9HJpL1S1RbPRDil0WbuabZmGB2zhuXnxCqTZFP2yZScRY6_865.rI6ez4u
 taw7oSfxXTTEcEE7TqievRMDIZe6GJg8iAQKMIGNPgy7mcK48q7N133_sghLNGD0BrEx15DGbY34
 MtFaaATr6P3u3xTuycBtUq9MZ2opDbWgdJsGyOtCxZrOA6kpanq7l5SnSFNLmBIAO3S7XYEDbxkt
 GLJBoB4dMwWK9Vbnst4anQ4eJlAoCxoLlGAJlz8RjdTt_RRaFOCshlXaUQFEqznQ4WxQoRDg7JYl
 fg4ec3kDFuqoyPuj7Ko7Z4p6NCXLR3Ed_Asy9X0K3aRyJguu4YaFtMDZgnJA_l5uJ.xKPj7ImKTD
 RSyUogsh.nxmFTwiAE8lNFQmlp8CE_aUEN2CxFrK.HDjkhEyt6LleW8OOb9OufpuzpiSKylR6PGI
 ISaxk.Q8cSGgLb3vHpEstZJD175No66xulr1uiXz0OphFExwNt_4Yuq59_fWxbppEDbxMtHdtqOh
 4uMXEyP3PwADqNzTwZZc7F64iYVa5bwdm
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic318.consmr.mail.bf2.yahoo.com with HTTP; Wed, 12 Oct 2022 08:23:48 +0000
Date: Wed, 12 Oct 2022 08:23:43 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1004169650.396598.1665563023045@mail.yahoo.com>
In-Reply-To: <9D936851-6284-407A-A928-2112A93A3C9D@gmail.com>
References: <1376300873.302187.1665525196243@mail.yahoo.com> <9D936851-6284-407A-A928-2112A93A3C9D@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.20740 YMailNorrin
Message-ID-Hash: 2KTR7DXL56MF3ITUQFBR544AARFY4WNZ
X-Message-ID-Hash: 2KTR7DXL56MF3ITUQFBR544AARFY4WNZ
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1.0 speed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2KTR7DXL56MF3ITUQFBR544AARFY4WNZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2030887520046391525=="

--===============2030887520046391525==
Content-Type: multipart/alternative;
	boundary="----=_Part_396597_1388817402.1665563023042"

------=_Part_396597_1388817402.1665563023042
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
Different OS/kernels in the two systems.In old system with UHD 3.10, the OS=
/kernel are=C2=A0Ubuntu=C2=A016.04.6 LTS (GNU/Linux 4.4.0-176-lowlatency x8=
6_64)In new system with UHD 4.1.0, the OS/kernel are=C2=A0Ubuntu 18.04.5 LT=
S (GNU/Linux 5.4.0-80-lowlatency x86_64)



    On Tuesday, 11 October 2022 at 23:11:50 BST, Marcus D Leech <patchvonbr=
aun@gmail.com> wrote: =20
=20
 Is it the same OS/kernel version in both cases?

Sent from my iPhone

On Oct 11, 2022, at 5:53 PM, zhou <hwzhou@yahoo.com> wrote:



=EF=BB=BF Hi Marcus,=C2=A0
I haven't tried UHD 4.2 or 4.3. I see ULLL sometimes in new system, so actu=
ally I am thinking reverting UHD back to the 3.10.



    On Tuesday, 11 October 2022 at 21:47:30 BST, Marcus D. Leech <patchvonb=
raun@gmail.com> wrote: =20
=20
   On 2022-10-11 16:23, zhou wrote:
 =20
  Thanks Marcus. Yes, I use the get_time_now function to read time inside U=
SRPs.=20
  I also think the newer UHD versions should be better, but the measurement=
s tell differently. The queries to USRPs are sequential. There are 16 USRPs=
 using UHD 4.1.0. I query them sequentially and the time intervals one exam=
ple is as follows (unit: ms):  =20
| 1.683691 |
| 1.606288 |
| 1.629145 |
| 1.790804 |
| 1.685894 |
| 1.736507 |
| 1.471674 |
| 1.424962 |
| 1.460004 |
| 1.403206 |
| 1.435221 |
| 1.394569 |
| 2.043707 |
| 1.509543 |
| 1.853792 |

 =20
  In old system, 24 USRPs use UHD 3.10. The time intervals in one example i=
s (unit: ms):  =20
| 0.385173 |
| 0.296745 |
| 0.284212 |
| 0.273682 |
| 0.278543 |
| 0.274327 |
| 0.279519 |
| 0.274441 |
| 0.276693 |
| 0.296875 |
| 0.275212 |
| 0.307623 |
| 0.309554 |
| 0.28233 |
| 0.28234 |
| 0.275119 |
| 0.283057 |
| 0.277138 |
| 0.279357 |
| 0.276074 |
| 0.277696 |
| 0.276335 |
| 0.280675 |

 =20
 =20
  Though there is some variance in intervals in both systems, the differenc=
e between old and new systems are significant and reliable. Could you pleas=
e pass my case to the R&D team to confirm?=20
  Thanks, Hongwei =C2=A0=20
 =20
      On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D. Leech <patchvo=
nbraun@gmail.com> wrote: =20
 =20
      On 2022-10-11 12:15, zhou via USRP-users wrote:
 =20
=20
    Hi,=20
  Some of our USRPs are using UHD 3.10 because they are in old systems. and=
 I am also using UHD 4.1.0 in some other USRPs in new system. The USRP prod=
ucts are all NI USRP 2944 (X310). In my applications, I need to use PPS sig=
nal to synchronize multiple USRPs. After applying PPS signals, I read back =
the time in USRPs one by one. Because of network delay, there is some diffe=
rence between the readings. However, the difference is much bigger in UHD 4=
.1.0.=C2=A0=20
  The interval between two USRPs using UHD 3.10 is about 0.2ms while it is =
about 1.4ms in UHD 4.1.0=20
  Does this mean that UHD 4.1.0 is slower than UHD 3.10?=20
  Thanks for any suggestion,=20
  =C2=A0Hongwei
 =20
       =20
 Have you tried UHD 4.2 or UHD 4.3?
=20
 I'll point out that the performance-critical aspect is the streaming perfo=
rmance.=C2=A0=C2=A0=C2=A0=C2=A0 The latency on get_time_now() shouldn't mat=
ter
 =C2=A0 that much, unless you're trying to use it for synchronization, and =
you really should be doing that.=C2=A0 That's what set_time_next_pps()
 =C2=A0 and friends are for.
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
 =20
------=_Part_396597_1388817402.1665563023042
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf5134776yahoo-style-wrap" style=
=3D"font-size: 13px; font-family: Helvetica Neue, Helvetica, Arial, sans-se=
rif;"><div style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-ser=
if;"></div>
        <div dir=3D"ltr" data-setdir=3D"false" style=3D"font-family: Helvet=
ica Neue, Helvetica, Arial, sans-serif;">Hi Marcus,</div><div dir=3D"ltr" d=
ata-setdir=3D"false" style=3D"font-family: Helvetica Neue, Helvetica, Arial=
, sans-serif;"><br></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"fo=
nt-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><div><div>Differe=
nt OS/kernels in the two systems.</div><div dir=3D"ltr" data-setdir=3D"fals=
e">In old system with UHD 3.10, <span><span style=3D"color: rgb(0, 0, 0); f=
ont-family: Times New Roman; font-size: medium;">the OS/kernel are&nbsp;</s=
pan><span style=3D"color: rgb(0, 0, 0); font-family: Times New Roman; font-=
size: medium;">Ubuntu&nbsp;</span></span>16.04.6 LTS (GNU/Linux 4.4.0-176-l=
owlatency x86_64)</div></div><div dir=3D"ltr" data-setdir=3D"false"><span><=
span style=3D"color: rgb(0, 0, 0); font-family: Times New Roman; font-size:=
 medium;">In new system with UHD 4.1.0, the OS/kernel are&nbsp;</span><span=
 style=3D"color: rgb(0, 0, 0); font-family: Times New Roman; font-size: med=
ium;">Ubuntu 18.04.5 LTS (GNU/Linux 5.4.0-80-lowlatency x86_64)</span></spa=
n><br></div></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"font-fami=
ly: Helvetica Neue, Helvetica, Arial, sans-serif;"><br></div><div dir=3D"lt=
r" data-setdir=3D"false" style=3D"font-family: Helvetica Neue, Helvetica, A=
rial, sans-serif;"><span><span style=3D"color: rgb(0, 0, 0); font-family: T=
imes New Roman; font-size: medium;"><br></span></span></div><div style=3D"f=
ont-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><br></div>
       =20
        </div><div id=3D"ydp53b3515yahoo_quoted_6040645863" class=3D"ydp53b=
3515yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, 11 October 2022 at 23:11:50 BST, Marcus D L=
eech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp53b3515yiv3505151442"><div>Is it the sam=
e OS/kernel version in both cases?<br><br><div dir=3D"ltr">Sent from my iPh=
one</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Oct 11, 2022, at=
 5:53 PM, zhou &lt;hwzhou@yahoo.com&gt; wrote:<br><br></blockquote></div><b=
lockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div style=3D"font-family=
:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" class=3D"ydp=
53b3515yiv3505151442ydp4d4f5827yahoo-style-wrap"><div></div>
        <div dir=3D"ltr">Hi Marcus,&nbsp;</div><div dir=3D"ltr"><br></div><=
div dir=3D"ltr">I haven't tried UHD 4.2 or 4.3. I see ULLL sometimes in new=
 system, so actually I am thinking reverting UHD back to the 3.10.</div><di=
v dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></d=
iv><div><br></div>
       =20
        </div><div id=3D"ydp53b3515yiv3505151442ydp73a21c8yahoo_quoted_6186=
119582" class=3D"ydp53b3515yiv3505151442ydp73a21c8yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, 11 October 2022 at 21:47:30 BST, Marcus D. =
Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp53b3515yiv3505151442ydp73a21c8yiv0843887=
143">
 =20
   =20
 =20
  <div>
    <div class=3D"ydp53b3515yiv3505151442ydp73a21c8yiv0843887143moz-cite-pr=
efix">On 2022-10-11 16:23, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-seri=
f;font-size:13px;" class=3D"ydp53b3515yiv3505151442ydp73a21c8yiv0843887143y=
dpef891c61yahoo-style-wrap">
        <div dir=3D"ltr">Thanks Marcus. Yes, I use the
          get_time_now function to read time inside USRPs.</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">I also think the newer UHD
          versions should be better, but the measurements tell
          differently. The queries to USRPs are sequential.</div>
        <div dir=3D"ltr">There are 16 USRPs using UHD
          4.1.0. I query them sequentially and the time intervals one
          example is as follows (unit: ms):</div>
        <div dir=3D"ltr">
          <div>
            <table style=3D"border-collapse:collapse;width:48pt;" width=3D"=
64" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
              <colgroup><col style=3D"width:48pt;" width=3D"64"> </colgroup=
><tbody>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"width:48pt;min-height:15pt;" width=3D"64" he=
ight=3D"20" align=3D"right">1.683691</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.606288</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.629145</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.790804</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.685894</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.736507</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.471674</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.424962</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.460004</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.403206</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.435221</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.394569</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">2.043707</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.509543</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">1.853792</td>
                </tr>
              </tbody>
            </table>
          </div>
          <br>
        </div>
        <div dir=3D"ltr">In old system, 24 USRPs use
          UHD 3.10. The time intervals in one example is (unit: ms):</div>
        <div dir=3D"ltr">
          <div>
            <table style=3D"border-collapse:collapse;width:48pt;" width=3D"=
64" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
              <colgroup><col style=3D"width:48pt;" width=3D"64"> </colgroup=
><tbody>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"width:48pt;min-height:15pt;" width=3D"64" he=
ight=3D"20" align=3D"right">0.385173</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.296745</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.284212</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.273682</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.278543</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.274327</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.279519</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.274441</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.276693</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.296875</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.275212</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.307623</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.309554</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.28233</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.28234</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.275119</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.283057</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.277138</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.279357</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.276074</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.277696</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.276335</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"rig=
ht">0.280675</td>
                </tr>
              </tbody>
            </table>
          </div>
          <br>
        </div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Though there is some variance
          in intervals in both systems, the difference between old and
          new systems are significant and reliable.</div>
        <div dir=3D"ltr">Could you please pass my case
          to the R&amp;D team to confirm?</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Thanks,</div>
        <div dir=3D"ltr">Hongwei</div>
        <div dir=3D"ltr">&nbsp;</div>
        <div dir=3D"ltr"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp53b3515yiv3505151442ydp73a21c8yiv0843887143ydp2ff4a00ey=
ahoo_quoted_6295737119" class=3D"ydp53b3515yiv3505151442ydp73a21c8yiv084388=
7143ydp2ff4a00eyahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-=
serif;font-size:13px;color:#26282a;">
          <div> On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D.
            Leech <a href=3D"mailto:patchvonbraun@gmail.com" class=3D"ydp53=
b3515yiv3505151442ydp73a21c8yiv0843887143moz-txt-link-rfc2396E" rel=3D"nofo=
llow" target=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp53b3515yiv3505151442ydp73a21c8yiv0843887143ydp2ff=
4a00eyiv9416287177">
              <div id=3D"ydp53b3515yiv3505151442ydp73a21c8yiv0843887143ydp2=
ff4a00eyiv9416287177yqt68152" class=3D"ydp53b3515yiv3505151442ydp73a21c8yiv=
0843887143ydp2ff4a00eyiv9416287177yqt5082330473">
                <div>
                  <div class=3D"ydp53b3515yiv3505151442ydp73a21c8yiv0843887=
143ydp2ff4a00eyiv9416287177moz-cite-prefix">On
                    2022-10-11 12:15, zhou via USRP-users wrote:<br clear=
=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue, Helvetica, Aria=
l, sans-serif;font-size:13px;" class=3D"ydp53b3515yiv3505151442ydp73a21c8yi=
v0843887143ydp2ff4a00eyiv9416287177ydpf0592c6fyahoo-style-wrap">
                    <div dir=3D"ltr">Hi,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Some of our USRPs are using UHD 3.10
                      because they are in old systems. and I am also
                      using UHD 4.1.0 in some other USRPs in new system.
                      The USRP products are all NI USRP 2944 (X310).</div>
                    <div dir=3D"ltr">In my applications, I need to use PPS
                      signal to synchronize multiple USRPs. After
                      applying PPS signals, I read back the time in
                      USRPs one by one. Because of network delay, there
                      is some difference between the readings. However,
                      the difference is much bigger in UHD 4.1.0.&nbsp;</di=
v>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">The interval between two USRPs using
                      UHD 3.10 is about 0.2ms while it is about 1.4ms in
                      UHD 4.1.0</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Does this mean that UHD 4.1.0 is
                      slower than UHD 3.10?</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Thanks for any suggestion,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">&nbsp;Hongwei<br clear=3D"none">
                    </div>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Have you tried UHD 4.2 or UHD 4.3?<br>
    <br>
    I'll point out that the performance-critical aspect is the streaming
    performance.&nbsp;&nbsp;&nbsp;&nbsp; The latency on get_time_now() shou=
ldn't matter<br>
    &nbsp; that much, unless you're trying to use it for synchronization, a=
nd
    you really should be doing that.&nbsp; That's what set_time_next_pps()<=
br>
    &nbsp; and friends are for.<br>
    <br>
    <br>
  </div>

</div>_______________________________________________<br>USRP-users mailing=
 list -- <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send an ema=
il to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br></div>
            </div>
        </div></div></blockquote></div></div></div>
            </div>
        </div></body></html>
------=_Part_396597_1388817402.1665563023042--

--===============2030887520046391525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2030887520046391525==--
