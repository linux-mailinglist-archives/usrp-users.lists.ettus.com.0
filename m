Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 496493F6A96
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 22:42:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E56C384831
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 16:42:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="eBJeoEMQ";
	dkim-atps=neutral
Received: from sonic317-26.consmr.mail.bf2.yahoo.com (sonic317-26.consmr.mail.bf2.yahoo.com [74.6.129.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 01AF23840BD
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 16:41:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629837683; bh=22uSfTuZxbIvBkgkWzimjn2ponEgPdH8f9d/QU4WEDc=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=eBJeoEMQ0RyJ7uZ4nPTyJNx9QjEecffFdiU+/QwZm2vomPzWEO9ZouXz+uFiRU1QEe55kE15jWJAHKQa2v9SzQJLSiIODEwRMr2QIOKeRSJii62IHsVuS8cCIlxLYgbwIsra9vYKrSsPT1/vZIrOEs81eoA3bDByvJexxAPyJCdUsjruxg3l5vr27iXbMfohbp+3dsrXSglEoCLjtNA0GOcloi9/PytaRsHnz+tHK705JaglFYcz54Bp7z5f/D0G5b7fQKDbxdG1gKr7p9lpnF/PlzH1Vt7dp2tgADY4vSEttpQ+h12MnSvOfXfLHpQxDca1gqDp4UXKUBP8DhcLCA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629837683; bh=LLtE9QkO/dOkdsfHQLHw2VXXUIDHgFtmU6PZD2rh3Cc=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=tFAhq/r1yp6wWytUoBGOoTC3rMAZWPy4IqTgpkIKtQ4Xnzc7tnDYjF4TDN6q/C0kfulvd1uQ8lgEFRvBIlnXPelPXsKMA5WeETTmPoKHKlh+7Sy+L8VNUQbfbeZE2avA7XBgLTql3h4zAYhSjFD00WLf+v4yTw1qz9HY687EksSyTxmXwR5h4epxDdGeLcL/BH1oCT53JTSXO2WxoI7SafRpjsO+spw2+WH0iM93k/Tl9pLWi7IcBzxazxVbBTKuzWx+pscAflt5D/fVThaytF23WzE5r4IrAVmA/riVjb70o5eX6oGYVsiIisiS+4kn4u50Zf90KerElyrfQyXjmQ==
X-YMail-OSG: jfS4pF0VM1nnGi0NzNVOJn.f8CQyfYNZ7lCokXbvBc3wk1w.BqyTtdVd_hUHjdJ
 PpyCZ4vRqromHuZ5Thl8Ow1eH7kXlZBcsejBB2CEkqef7DYWYn3.ZZdAVNtAbmvfOGA2nV8E8cjE
 NBRx7GVDglGT7L66BJyh69rlpaauIXdXzI5.KV5eiWyo4Fb6gMvNV07YIkqPeRw1HOHxhylMavwi
 p76953PFq8FxIrkTrfhIp57K1fo24wf65T69N3bBars8j0o1QdWh9gjERyRTGKfftHMEQwJIQz0J
 eeK.SFP67X3Hp12lB0mcfu0vJ1Osf89OSrg99n9HtyA8qHYgIXO_UWVvBBVxNIFGiLW0C9YFjaMZ
 dIncCG1fMXKrGAXWSDOtyqzVzLF37CUoC3qnFMZWN7Tvg4RZtk1fBvT_D0o87NoXdVoa2Le9n.L3
 v4u0LfP5ysibyIqyisI6aK0lkDF1bba.TrpCWwJcSSfeX0efyKN9vPH9EsGeKwyLYL5ZaDC.lcyz
 iZbswfviNja1pPjAwAMtP3s16Vu5lu6NPlK1f7tqc2131_SUOu6klWwETN3wr.moYY8KVQEZUhhY
 l68pFktQbmdKp.zg2T1vFp6HyK8S7pCz6g41Vxfj8ik_E8IL_LJUXekAztW319TNxDFsZt028ARY
 jaJ6nom_EbleqDAoAdzsZD3lWw1iblzfXCOOKnNk3k2vdRLkjahBAn97xzTjEN9VTGr_5W8N_97g
 8GIxBkYCXuR848.1OuouXeanZOHHYv7vpLwNM38kxgagY2I.wtz.cZqxz_f46TQ0soxrrJp4SUri
 pYPKV_aHftMAmcKd6RhnMPhGXLPQcq87cOf.CaVzq6NnzjnZD1VyjaRIKmw1cAZ9qF58PrBuiqJi
 SIJd5apni64Gvpcg7X0t21dAnKia_hLFLzaOT_NaACXTql0q8UfeFLYjmOERF3_SHvlBq.l3uCkt
 9krCg4oiF6JjIbks.h.xcQMfKQ.D1LfGRmQkYCJ6iRBmn4uASzLB3LtyWspOghP8uz8B7VpQrBB6
 9YBaVdKqHeP4iIU1jW4x0zMfdfGPmrtb6cOavTCnXFx0LbuGwvUHGusjvz6Y2m8w8L3C6oFlTgxR
 qwRgOgHXTW8OQMk10Cu8vR9LwnCNDEb2kVUL2OYJwHD0g6Ne2VP9qzTZ4oXXqoE4bmeoWvDVi2dD
 Lhus3l0bAkzl7xj92meQlnLF_mnp.rjyKt2jrTCoCTvxuk.hjjZRDX6kTNji25LtwqBSKllKlQP4
 5fLgfg_8jHzNyCzAh63tH8bjmXn56NuNPXk1nW1WX3GQDqnvHSQMnJW5_c_BN6vQrAKZp0A.2RNW
 Xp31Ig0L2eFBiob7u1i0BLzh7hub.7qdMP8WGwaxr7LPnlCtZPzT1gmxRhTEjBSxgEDumJ1CPkUw
 P3MVLdVPDJPwyPoFFrUS3NsPnmZvid6mPHQbDyIhPyknaDKXxGkZiqGLYkU7k.w3I4N1M1opLSTa
 k6JqBdzGCMt41VQkFKIrgAL7jkQIEQTGWleV90iGkWSQnc_2.PLY2gJ_pXSpLKnJkQb1ztk9Cvua
 lnG48N1UL86z2FYgzmH_QP82LlqhNTk5LmYMZfCMmKFugJJYVtTE9xtDZYtI1IJIMMj2tRfFbUjy
 qR7DD_CBTU5PCffN7_xAthuywd.X.DxOO3NnbXrWmb26L7ocPbDUZ86cYlUjJGLhPgH1uNNDu2Wl
 GN2HPjQ80W9FGgMP8TvZChgCZCEZOO3o2lq87Oqxmjc5Djqt9qVYaOhKZhelKPkk._EDQUGc9U8U
 BS38UF11jgTnG9KlPkUyStdayiePD08H7LpomMzP99uRh6DmtcJ746eZaF2aaJbMxUUE0iL0jjIA
 cqPSz5xA37ed013TtC0BAXeZPW6kYm7Yag9o_fBpls_iJoa0iDrEOmqOWn1PvZ5qxLKbAvw.T3rW
 3iij68J37PpkMWtK0GlAzWGL_fyYF0GixY2tKTrJUvNyDjbJX40nGZfHxxjF273uurJlmDDiy8gs
 y54EUjw0hssvBtczdCS.KzakNCdnmk5KljLezCd8QsZy_Aj6UCT5wJFQl2HHHBZY_XDVsDzfOpBL
 seOoArWwsM8crHycUErYNbpTGI_9Yk9kJoMGqFMZMdIFf8QX8hPNDPHyuHMZQMNqdi7eHO.WDSRq
 573IT9pxQ056K_3ACWzJwy0FVLs2t8aHKVIjuHjBcHgOci_fXM1GqXsKadZGsKxedxnVink3Zkka
 MZXVv2s6oYur6abHSnu5H6t4lb3cMTve3qhe1COCjT_ZXlIrNlXxE693piN6F4FUIvLba4eiFeu7
 uY0yWP74QQ0TRa939Seejon8-
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.bf2.yahoo.com with HTTP; Tue, 24 Aug 2021 20:41:23 +0000
Date: Tue, 24 Aug 2021 20:41:21 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1502691808.229735.1629837681660@mail.yahoo.com>
In-Reply-To: <1cb46b16-2f3a-eb92-a55e-a8b09a64370d@gmail.com>
References: <1603286005.133827.1629816455930.ref@mail.yahoo.com> <1603286005.133827.1629816455930@mail.yahoo.com> <881b16c4-161c-6edf-5a7f-de0cafdc47a0@gmail.com> <1800716940.152466.1629819588887@mail.yahoo.com> <10eb8f95-de74-f86d-e638-2d519f35ed33@gmail.com> <983558461.158295.1629821292551@mail.yahoo.com> <1cb46b16-2f3a-eb92-a55e-a8b09a64370d@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18906 YMailNorrin
Message-ID-Hash: NNKUEODC46IV6OCOIT2FQ26POHYV2KJN
X-Message-ID-Hash: NNKUEODC46IV6OCOIT2FQ26POHYV2KJN
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running rfnoc replay example on n310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NNKUEODC46IV6OCOIT2FQ26POHYV2KJN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4721023554460661681=="

--===============4721023554460661681==
Content-Type: multipart/alternative;
	boundary="----=_Part_229734_1682737126.1629837681659"

------=_Part_229734_1682737126.1629837681659
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 I'm trying to compile the source code using SDK 2019.1. I'm pointing the t=
he SDK project to the directory for sysroot and also to the directory for m=
y linux toolchain which are the following
 /usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi

/tools/Xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gn=
ueabihf
I continue to get the following error stating that these files can't be fou=
nd, however, they do exist. And, when I try adding them within the project =
and refreshing nothing happens.=20


cannot find /lib/ld-linux-armhf.so.3=C2=A0=C2=A0=20

cannot find /lib/libc.so.6=C2=A0=C2=A0=C2=A0=20

cannot find /usr/lib/libc_nonshared.a=C2=A0=C2=A0=C2=A0=20

Am I going about building this application correctly? I thought that linkin=
g my project to sysroot which I installed for the n310 and to the SDK toolc=
hain( maybe I'm doing this incorrectly) would be pretty straightforward.










    On Tuesday, August 24, 2021, 12:41:05 PM EDT, Marcus D. Leech <patchvon=
braun@gmail.com> wrote: =20
=20
  On 2021-08-24 12:08 p.m., Tellrell White wrote:
 =20
=20
 Yep. Marcus you caught it!! That worked. Do I need to complete the section=
s on "Compiling MPM Natively" and "Building UHD"?? I understand that I need=
 the cross-compiler for compiling SW for the device but I don't see the nee=
d for completing the other two parts. Is there something additional that ne=
eds to be done other than cross compiling on the host machine and ssh'ing o=
ver the executable?=20
 =20
  As far as I know, you should be able to just cross-compile the code you'r=
e interested in.
=20
=20
  =20
------=_Part_229734_1682737126.1629837681659
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpb656d470yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">I'm trying to compile the so=
urce code using SDK 2019.1. I'm pointing the the SDK project to the directo=
ry for sysroot and also to the directory for my linux toolchain which are t=
he following</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false"> <span>/usr/local/share/uhd/images/y/sysroot=
s/cortexa9t2hf-neon-oe-linux-gnueabi<span><br></span></span></div><div dir=
=3D"ltr" data-setdir=3D"false"><span><span><br></span></span></div><div dir=
=3D"ltr" data-setdir=3D"false"><span><span>/tools/Xilinx/SDK/2019.1/gnu/aar=
ch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf</span></span></div><div =
dir=3D"ltr" data-setdir=3D"false"><span><span><br></span></span></div><div =
dir=3D"ltr" data-setdir=3D"false"><span><span>I continue to get the followi=
ng error stating that these files can't be found, however, they do exist. A=
nd, when I try adding them within the project and refreshing nothing happen=
s. <br></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><sp=
an><br></span></span></div><div><span></span><br><div>cannot find /lib/ld-l=
inux-armhf.so.3&nbsp;&nbsp; <br></div><br><div dir=3D"ltr" data-setdir=3D"f=
alse"><div><div>cannot find /lib/libc.so.6&nbsp;&nbsp;&nbsp; <br></div><div=
><br><div>cannot find /usr/lib/libc_nonshared.a&nbsp;&nbsp;&nbsp; <br></div=
><div><br></div><div dir=3D"ltr" data-setdir=3D"false">Am I going about bui=
lding this application correctly? I thought that linking my project to sysr=
oot which I installed for the n310 and to the SDK toolchain( maybe I'm doin=
g this incorrectly) would be pretty straightforward.<br></div><br></div><di=
v dir=3D"ltr" data-setdir=3D"false"><div><br></div></div><br></div><div><br=
></div></div><br></div><div dir=3D"ltr" data-setdir=3D"false"><span><br></s=
pan></div><div dir=3D"ltr" data-setdir=3D"false"><span></span><br></div><di=
v dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_0310847195" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, August 24, 2021, 12:41:05 PM EDT, Marcus D.=
 Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv8850409427"><div>
    <div class=3D"yiv8850409427yqt7629650613" id=3D"yiv8850409427yqtfd55190=
"><div class=3D"yiv8850409427moz-cite-prefix">On 2021-08-24 12:08 p.m., Tel=
lrell
      White wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div></div><div class=3D"yiv8850409427yqt7629650613" id=
=3D"yiv8850409427yqtfd67013"></div><div><div class=3D"yiv8850409427ydp967d6=
306yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;font-size:13px;"><div class=3D"yiv8850409427yqt7629650613" id=
=3D"yiv8850409427yqtfd55908">
        </div><div dir=3D"ltr"><div class=3D"yiv8850409427yqt7629650613" id=
=3D"yiv8850409427yqtfd79456">Yep. Marcus you caught it!!
          That worked. Do I need to complete the sections on "Compiling
          MPM Natively" and "Building UHD"?? I understand that I need
          the cross-compiler for compiling SW for the device but I don't
          see the need for completing the other two parts. Is there
          something additional that needs to be done other than cross
          compiling on the host machine and ssh'ing over the executable?
          </div><br clear=3D"none">
        </div>
        <br clear=3D"none">
      </div>
   =20
    As far as I know, you should be able to just cross-compile the code
    you're interested in.<div class=3D"yiv8850409427yqt7629650613" id=3D"yi=
v8850409427yqtfd36793"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_229734_1682737126.1629837681659--

--===============4721023554460661681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4721023554460661681==--
