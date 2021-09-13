Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA56409D76
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 21:52:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64ACF384DEA
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 15:52:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="t1TpYq5v";
	dkim-atps=neutral
Received: from sonic304-10.consmr.mail.bf2.yahoo.com (sonic304-10.consmr.mail.bf2.yahoo.com [74.6.128.33])
	by mm2.emwd.com (Postfix) with ESMTPS id AA61F3849B2
	for <usrp-users@lists.ettus.com>; Mon, 13 Sep 2021 15:51:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631562699; bh=Hk9rgytnnypqWYU1gfUTr52Cv+Fc1nh6gCApkElh56Y=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=t1TpYq5vX2mwjVaqtN+ibldUoxOkUOzUukP64TJOYRYSSMHH/pIID6EHuZvLg9ETWqIBbS7gOL3RKiZeH7SbYuIcUw8OHZg1DfXqrHpSArhqqehozv2jGXgy+gn7d86VMviNLbn0M4RM6mROGeAXIw+kZP5xXd3bLfoA1/5aP19pWywtVSsNdQe9wZFuDTPCWU1dNIkFDQwlggTbB1hnEt4Xb33xCt14AfMbvq0retZIuTw3xrVIaQFTaFI7zu5Akicuh4zKWlwnlmoxIoJRdo4wGr+2Bk469anwamTAkBOkCoLNq1S9OryRh9PepMEJpLauanBRbfaGUQiMfoizBw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631562699; bh=uXwoy8OTN3s4b9BB5mlTNW7wqMIruuiSRAgMedVYzpb=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=mQLoRS0vzzPGsqb8b+EOSLiWASdyrT72TGsiNZQYEpu5eBvPyd8IyAYvkx7HOa9LUSWo2Xeo+eeqg6QTZH3acZpaIP1CxlgqU9fZB4WCeld/xFsZQ+KCySwEj1UlTjg24Y12qYSGylMGtZWTCJ8NPnPUxEe/3666deFNf1+KNLW0uxr9ehUEs+OLiWXJkHpnhHOMX1bZixPr+LLHUXA1D0E7dD8PDo6P9tgtTHHBeLOAU5/Ug83vEB+nMx8rGVjf9BgGch8GsbyG7d6TYOVvWHVOf/fP3W0pusG/9wo6nvJWrFUJ0h/d01RESQpwT4bdVxDPspnmAeV7vlYubDEVdw==
X-YMail-OSG: .zy49UkVM1nKnqIXQWUyknxeeK0fttCKUqJlb4urs3Iu2lxCit6BOYOzwE8yzBC
 qjomsyP4uhOQaMH1poUmp4FcEnlxjn8eah5w._Ab2.MXlAav_puVzAA38aAXzn4aw4VQLXAVqxTY
 1hE.oEIjHCne3eLOnOr.iHdPqepUczVRhCFIKvXed7Nt0tmjVr.quy75mAmO_TA3NzMWEmjnJ6L.
 x1UncEWaXZvYNEIKiMJkneSDOadfK60ABX7o8e6xU6VoCJOjXNImI4peFr4IerhJohy4kIBhcFO8
 lJHZqq5tjsI2.kbuyPVMlOtn8L2s3k20e8fQ0F1FcSiqXZF.5CtWcloux1Y73FCpJ.9jhcwJs6Y7
 fSzgYsURk4q5JawXhMcp4tgYVl2p9spZBWEa9KF11AVH3Uvd6WN0JzmH6DwpUxyqaBtKvO0M1JvT
 QpWQV3cPxslU4vK7gWRWo5UTTAW4IXBQKaruTdMp2dCM0aA7_p4ArrGso3UQ3pWo53aj1K715l.f
 Nlw8HHSihVgYctCcZwIlrfXDjqywiUJSnQN7oxO6WZzINP4ZAoCjI4rZSQljqbUsh.NILYdYE.Bh
 8AaYg5qHWY3X9N.62IIGgV0.I8U1yerMoDtZ9ef8nlHh0COWVUoOCqxVE.PSrwCMTeJoTRkR17ee
 iBoxPMhXrcaGWoL95jqU69n2Dg6ycrMc54qgx5RSke280Z1BY4WG0gPL1q1hz0angpQmwEeQB8kp
 CxM3mwfXf_nsfvUidikqDn4_L9plXTZszx4GFAzV5GJagm_aFMZ0ZiImpWvHmNO4payJH8HMLnk7
 v85p_c5_1_UtsewFlko8pReCE3Zvzd4z.Mk_FmkBYkf9YYTAs3wh7a7Pcb5e0zNFQnuShm7gE4LF
 yj5cQE8TlKmvE_P0Rsq2_j1RAyyAvWIznbZNgBppK2zV1H3o8hfEOntOF9QKPSIDUvDYemfu8yrM
 Gnwcbi8scN1KPZdfFySM49sGWGeMrvLE5dZW7qtNDUgDiaH7b_NSMSUG3DHSdU8_bx2P9eVSybq5
 YfSSL09AU8t.gDKtreGc7SEC9odpStz6FF3rvHTUmhM1Q2St_jWDu_BoNwWFwd8ZwcSaOPXL21jN
 3WSRNBWRGcjDolEbFcnWOZjo4Sk.qPBPH07.Unxz7Gm94.x.vOLqLlE8E4akR1OvlRe5T2Yj1r3H
 UKUBvHMlgifxDO8wSOdArfqD2587lsm5Mr.C1S_8WElrlwsaYqBNqOAU1xTWrkuGU6xavEJbULic
 3w8Qj04pPuukAEW.f0M3WEWGIcEx8ZMWl9kmISpf7JCEv910aOi1ZD8k0i4s61xFDxn5xHSO1ii8
 VQB8ySfmv6DDu6d_alngxww1eyu_BuFYBTkcjz5iUON9o4GsPdjoZ.jkuDzGzLVM0GhH.9vYhWEN
 MLUWa9nrsz3Apo8NlsaBZsbr75qu_Q6ypBBESaYb43slzdQ1yjxwlEfyU4PtyPN4Hcs2JLdjugYH
 T1Gm_DxgicnyAti.S3uIjwNWJ1r0IhNp0VZ3xSvbtXLVJ1MiXhK9TeVpXwPRpFsqCnyhrFcYNW5E
 mDA8SWhJU8c77gU_GgIVJjg8Dos1Mdy2vvrdZMcVcm_HaMllhFR8AcFk3aIO2deGG4qoiyq5zQLt
 4Yyl._ENHhL613fQUQFKkSJ_ybmE4_.B7i5khY.NlmS5u8d9nrD_ikBHPni_YlfxpDFVEHXI59x1
 RApSUs57jSyzbWle5_NB_aGVy1W20YhXKLoC5jM9uzw_ZndqW7k5ks7_gtY4TyzNHPcC5gsbCNic
 7GCtMspYkvttfq88bvg0H0uO1bJnZ1GIMdMTu_47XAesHusUFrdo0BMILzCxrvH6LWNFQUxg51HU
 zPQaMw4bZRwXow082ZWILOZ15uand0b4OzsjoYayYsVBSvBPh7pntowjAYL6XuMVaW4GzjbMCO7O
 SgUJ5fcR8eH0VL2BM7b8pByR1tKaphI_qziEMTA0CvLoNcUedCH6eCCBhpG5JuX5EmoN5BSY5igs
 BiRyie8dOJGT22Qh9rhCqmk0NV0W4ByNmYZVSeWzu_EDb34TLYgEGrXvWh36Aq4hpoT8lDPt6Uig
 cbvqLGyd3qvzHCx_VLhfL5zQrsYpXETDmsZZNJPcs94G_3Z3ylVB0_0G2ktBNbc4MWFU2HXquBUq
 BvgwJSkj2pIMLcE8uc9wvFB3UAXH.8yj_Dw2Pbt08ryM66qua8lgif42B9BcDVd94PvwtV7e9k40
 lAMwEPGiJTRGWo4M0J_2GtCGrHl_GiDGRUpekafa0qYsOVJaHjri6BmFo3zTV
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.bf2.yahoo.com with HTTP; Mon, 13 Sep 2021 19:51:39 +0000
Date: Mon, 13 Sep 2021 19:51:37 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1147615870.3118228.1631562697777@mail.yahoo.com>
In-Reply-To: <a5bbd7fe-af0d-e07a-6d8d-ee0b4b4d758a@gmail.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es> <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com> <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com> <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com> <804336125.2658048.1631299169124@mail.yahoo.com> <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com> <899213065.2697497.1631311503116@mail.yahoo.com> <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com> <1529290832.2403454.1631339791541@mail.yahoo.com> <1b1061ac-8a1f-2009-f5a7-19b58c532fd5@gmail.com> <410306297.2886349.1631467905488@mail.yahoo.com> <ca9cac4c-71ce-7887-cf52-3e0d36d45d28@gmail.com> <2078480465.2919564.1631489465910@mail.yahoo.com> <a5bbd7fe-af0d-e07a-6d8d-ee0b4b4d758a@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: PYXILUB6CTEEGXCHZ77F6X6HXBPQTFJY
X-Message-ID-Hash: PYXILUB6CTEEGXCHZ77F6X6HXBPQTFJY
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYXILUB6CTEEGXCHZ77F6X6HXBPQTFJY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5968388776996425170=="

--===============5968388776996425170==
Content-Type: multipart/alternative;
	boundary="----=_Part_3118227_1850877774.1631562697774"

------=_Part_3118227_1850877774.1631562697774
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
I am not seeking buffer change in USRP after your explanation in the previo=
us email. I am trying to adjust the host-side buffer to see if it can help.

As per your suggestion, I have tried getsockopt() to see what the send buff=
er size is for a UDP socket.
//check buffer size before changing send_buff_sizegetsockopt();=C2=A0 --->=
=C2=A0send buffer size =3D 33554432

//change send_buffer_sizestream_args_tx.args["send_buff_size"] =3D std::to_=
string(5000000);
tx_stream =3D usrp->get_tx_stream(stream_args_tx);

//check buffer size againgetsockopt();=C2=A0 --->=C2=A0send buffer size =3D=
 33554432

33554432 is the value I configured in sysctl.=C2=A0 It seemed that send_buf=
f_size didn't take effect.

However, I could use=C2=A0setsockopt()=C2=A0 to modify buffer size, but thi=
s didn't change my test result either - still only 4 packets were buffered.



    On Monday, 13 September 2021, 02:05:57 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
  On 2021-09-12 7:31 p.m., zhou wrote:
 =20
=20
 Thank you Marcus. I tried as below: my_stream_args.args["send_buff_size"] =
=3D std::to_string(500000);
  my_stream_args.args["send_buff_size"] =3D std::to_string(5000000); They g=
ive the same results. The 1MB limit still exists. I don't know where this l=
imit comes from. Am I wrong in configuration? =20
  I think I've already explained that the "send_buff_size" stream argument =
controls the HOST SIDE BUFFER ONLY, since it
 =C2=A0 eventually just uses the standard Unix/Linux/BSD "socket" API call =
setsockopt() to set the SO_SNDBUF option to the
 =C2=A0 value you provide.
=20
 The buffering ON THE USRP is a different matter, and as I've already expla=
ined, this is likely fixed by the FPGA implementation.
 =C2=A0 You'd previously talked about the SD card on the N321, but there's =
NO WAY that could be used for buffering--for one, it's
 =C2=A0 dedicated to the Linux filesystem on the device, and for a second, =
it's VASTLY TOO SLOW.=C2=A0=C2=A0 The DRAM on the N321 is dedicated
 =C2=A0 as far as I know, to the Linux CPU and if any of it is available fo=
r the FPGA AT ALL, it's not going to be very much, and it's
 =C2=A0 likely FIXED TO A SPECIFIC VALUE by the implementation.
=20
 If you're seeing very-occasional LLL and U at very-high rates (and believe=
 me, multiple channels at 245Msps are *very high rates*),
 =C2=A0 then your issue is likely not strictly buffering related, but relat=
ed to something that Linux may be doing on your host "once in a while"
 =C2=A0 that changes the performance dynamics.
=20
=20
  =20
------=_Part_3118227_1850877774.1631562697774
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpaf44f4f9yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>I am not seeking buffer change in USRP after your explanation in the previ=
ous email. I am trying to adjust the host-side buffer to see if it can help=
.<br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr=
" data-setdir=3D"false">As per your suggestion, I have tried g<span><span s=
tyle=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Ari=
al, sans-serif;">etsockopt() to see what the <span>send buffer size is for =
a UDP socket.</span></span></span></div><div><br></div><div dir=3D"ltr" dat=
a-setdir=3D"false"><span><span>//check buffer size before changing send_buf=
f_size</span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><spa=
n>getsockopt();&nbsp; ---&gt;&nbsp;<span>send buffer size =3D 33554432</spa=
n></span><br></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><spa=
n><br></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><spa=
n>//change send_buffer_size</span></span></div><div dir=3D"ltr" data-setdir=
=3D"false"><span><span><span><span style=3D"background-color: rgb(253, 253,=
 252); color: rgb(0, 0, 0); font-family: monospace, fixed; white-space: pre=
-wrap;">stream_args_tx.args[</span><span class=3D"ydp2778bee4yiv7630467964y=
dp326b50e8stringliteral" style=3D"font-family: monospace, fixed; white-spac=
e: pre-wrap; color: rgb(0, 32, 128);">"send_buff_size"</span><span style=3D=
"background-color: rgb(253, 253, 252); color: rgb(0, 0, 0); font-family: mo=
nospace, fixed; white-space: pre-wrap;">] =3D std::to_string(5000000);</spa=
n></span><br></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><sp=
an>tx_stream =3D usrp-&gt;get_tx_stream(stream_args_tx);</span><br></div><d=
iv dir=3D"ltr" data-setdir=3D"false"><span><br></span></div><div dir=3D"ltr=
" data-setdir=3D"false"><span>//check buffer size again</span></div><div di=
r=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" data-setdir=3D"false"=
 style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Aria=
l, sans-serif;">getsockopt();&nbsp; ---&gt;&nbsp;send buffer size =3D 33554=
432<br></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0, =
0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><br></di=
v><div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0, 0, 0); font=
-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><span><span style=
=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, san=
s-serif;">33554432 is the value I configured in sysctl.&nbsp; It seemed tha=
t <span><span style=3D"color: rgb(0, 32, 128); font-family: monospace, fixe=
d; white-space: pre-wrap;">send_buff_size </span></span>didn't take effect.=
</span></span><br></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"col=
or: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif=
;"><span><span style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, H=
elvetica, Arial, sans-serif;"><br></span></span></div><div dir=3D"ltr" data=
-setdir=3D"false" style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue=
, Helvetica, Arial, sans-serif;"><span><span style=3D"color: rgb(0, 0, 0); =
font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">However, I coul=
d use&nbsp;<span><span style=3D"color: rgb(38, 40, 42); font-family: Helvet=
ica Neue, Helvetica, Arial, sans-serif;">setsockopt()&nbsp; to modify buffe=
r size, but this didn't change my test result either - still only 4 packets=
 were buffered.</span></span></span></span></div><div><br></div></div><div =
dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div><div><br></div><=
/div>
       =20
        </div><div id=3D"ydp2778bee4yahoo_quoted_2351831809" class=3D"ydp27=
78bee4yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 13 September 2021, 02:05:57 BST, Marcus D. L=
eech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><div id=3D"ydp2778bee4yiv7630467964"><div>
    <div class=3D"ydp2778bee4yiv7630467964yqt1431148711" id=3D"ydp2778bee4y=
iv7630467964yqtfd44217"><div class=3D"ydp2778bee4yiv7630467964moz-cite-pref=
ix">On 2021-09-12 7:31 p.m., zhou wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div></div><div class=3D"ydp2778bee4yiv7630467964yqt143=
1148711" id=3D"ydp2778bee4yiv7630467964yqtfd14459"></div><div><div class=3D=
"ydp2778bee4yiv7630467964ydp4fc3d016yahoo-style-wrap" style=3D"font-size:13=
px;font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><div class=3D=
"ydp2778bee4yiv7630467964yqt1431148711" id=3D"ydp2778bee4yiv7630467964yqtfd=
85083">
        <div dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;">Thank you Marcus.</div>
        <div dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;">I tried as below:</div>
        <div dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;"><span><span style=3D"color:rgb(0, 0, 0);font-family:monos=
pace, fixed;white-space:pre-wrap;background-color:rgb(253, 253, 252);">my_s=
tream_args.args[</span><span class=3D"ydp2778bee4yiv7630467964ydp326b50e8st=
ringliteral" style=3D"color:rgb(0, 32, 128);font-family:monospace, fixed;wh=
ite-space:pre-wrap;background-color:rgb(253, 253, 252);">"send_buff_size"</=
span><span style=3D"color:rgb(0, 0, 0);font-family:monospace, fixed;white-s=
pace:pre-wrap;background-color:rgb(253, 253, 252);">] =3D std::to_string(50=
0000);</span></span><br clear=3D"none">
        </div>
        <div dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;"><span><span style=3D"color:rgb(0, 0, 0);font-family:monos=
pace, fixed;white-space:pre-wrap;background-color:rgb(253, 253, 252);"><spa=
n><span style=3D"color:rgb(0, 0, 0);font-family:monospace, fixed;white-spac=
e:pre-wrap;background-color:rgb(253, 253, 252);">my_stream_args.args[</span=
><span class=3D"ydp2778bee4yiv7630467964ydp326b50e8stringliteral" style=3D"=
color:rgb(0, 32, 128);font-family:monospace, fixed;white-space:pre-wrap;bac=
kground-color:rgb(253, 253, 252);">"send_buff_size"</span><span style=3D"co=
lor:rgb(0, 0, 0);font-family:monospace, fixed;white-space:pre-wrap;backgrou=
nd-color:rgb(253, 253, 252);">] =3D std::to_string(5000000);</span></span>
</span></span></div>
        <div dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;"><span><span style=3D"color:rgb(0, 0, 0);font-family:monos=
pace, fixed;white-space:pre-wrap;background-color:rgb(253, 253, 252);"><spa=
n><span style=3D"color:rgb(0, 0, 0);font-family:monospace, fixed;white-spac=
e:pre-wrap;background-color:rgb(253, 253, 252);">They give the same results=
. The 1MB limit still exists. I don't know where this limit comes from.</sp=
an></span></span></span></div>
        <div dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;"><span><span style=3D"color:rgb(0, 0, 0);font-family:monos=
pace, fixed;white-space:pre-wrap;background-color:rgb(253, 253, 252);"><spa=
n><span style=3D"color:rgb(0, 0, 0);font-family:monospace, fixed;white-spac=
e:pre-wrap;background-color:rgb(253, 253, 252);">Am I wrong in configuratio=
n?</span></span></span></span></div></div>
        <div dir=3D"ltr" style=3D"font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;"><span><span style=3D"color:rgb(0, 0, 0);font-family:monos=
pace, fixed;white-space:pre-wrap;background-color:rgb(253, 253, 252);"><spa=
n><span style=3D"color:rgb(0, 0, 0);font-family:monospace, fixed;white-spac=
e:pre-wrap;background-color:rgb(253, 253, 252);">
</span></span></span></span></div>
        <br clear=3D"none">
      </div>
   =20
    I think I've already explained that the "send_buff_size" stream
    argument controls the HOST SIDE BUFFER ONLY, since it<br clear=3D"none"=
>
    &nbsp; eventually just uses the standard Unix/Linux/BSD "socket" API ca=
ll
    setsockopt() to set the SO_SNDBUF option to the<br clear=3D"none">
    &nbsp; value you provide.<br clear=3D"none">
    <br clear=3D"none">
    The buffering ON THE USRP is a different matter, and as I've already
    explained, this is likely fixed by the FPGA implementation.<br clear=3D=
"none">
    &nbsp; You'd previously talked about the SD card on the N321, but there=
's
    NO WAY that could be used for buffering--for one, it's<br clear=3D"none=
">
    &nbsp; dedicated to the Linux filesystem on the device, and for a secon=
d,
    it's VASTLY TOO SLOW.&nbsp;&nbsp; The DRAM on the N321 is dedicated<br =
clear=3D"none">
    &nbsp; as far as I know, to the Linux CPU and if any of it is available
    for the FPGA AT ALL, it's not going to be very much, and it's<br clear=
=3D"none">
    &nbsp; likely FIXED TO A SPECIFIC VALUE by the implementation.<br clear=
=3D"none">
    <br clear=3D"none">
    If you're seeing very-occasional LLL and U at very-high rates (and
    believe me, multiple channels at 245Msps are *very high rates*),<br cle=
ar=3D"none">
    &nbsp; then your issue is likely not strictly buffering related, but
    related to something that Linux may be doing on your host "once in a
    while"<br clear=3D"none">
    &nbsp; that changes the performance dynamics.<div class=3D"ydp2778bee4y=
iv7630467964yqt1431148711" id=3D"ydp2778bee4yiv7630467964yqtfd75780"><br cl=
ear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_3118227_1850877774.1631562697774--

--===============5968388776996425170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5968388776996425170==--
