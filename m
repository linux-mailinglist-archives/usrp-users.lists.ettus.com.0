Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1912712C3C
	for <lists+usrp-users@lfdr.de>; Fri, 26 May 2023 20:12:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F828384728
	for <lists+usrp-users@lfdr.de>; Fri, 26 May 2023 14:12:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685124753; bh=F58s8/sGCCRNHGXwObX6b5usE7+gOR1DlIpbZV+EO78=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Yj7pPSgu2TgrE7p46Gq+1Uh9qykjB1QYckgokWfSuM84/+UQN6NdIZNAmv/au4sba
	 xsD8B/G8bY8YGBFZ9N8K3whNqUQnQn1Zj/EIMDSqP1LMS7QpbNCW1zHc/8JqRhOKyz
	 ae60cOtoLxiNSvvdhfkchFcaACC6rL5sf3wu/s7AFsWuYwWktBxsCO9thSFeb0wrq1
	 +qFquu+3Cc3sVh5ZKEDMWrTV+4z4W4j2zruwvQQ16/WpTL79cPUZSDR9/up4mO7QlV
	 WosJ2oyAqQ5Qdy1il0UhP7VopoUvR8TJZgsLO3GgpkD2Wc/yET4IIh8LS/n0JKjrln
	 PUX8gay8IIdRQ==
Received: from sonic310-14.consmr.mail.bf2.yahoo.com (sonic310-14.consmr.mail.bf2.yahoo.com [74.6.135.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E98B383D54
	for <usrp-users@lists.ettus.com>; Fri, 26 May 2023 14:11:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="Tq2nvo72";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1685124693; bh=aehq3ORfp6cGZc17JHT5Y13mMkZBr2EmP8UjCuouaKM=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=Tq2nvo72V05eRNLC3WTdQqcK9mgLkq580kr5DeOZZj4l4ryz1SAU42YnkRO0KpDYv7XxfE7CBCkIW92PQqe+GZwt3jTezpHzJglgzUlNIfB5rXv20swC94W4o6vyF5tXcwyuvZ1hQVRIadRqQ8srh/jFXWN9Gx3k1pWAIZJNkPtGt1WAOPn+/87lUhd3FwfpEPdwmRTZwyDRNy2N+4JQvKEWB03TD0tRFjDRg0rlwHrD2OBazFfp0Rhe+UoHdCvPnc4SgxIu2NStGxb0Ys0f54fwrvfq0s5V02AuB9hqTO90BghC+YDqzZCOw7mNZG1q6WUZ8tUHlVHfN46DrhqMrg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1685124693; bh=sDKEYyTw5OpWRf6n0lfT1//ilom0M+ZDwjMmNZN+6IY=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Fus4wUUbEx680n3drihh/9mrK+YJC3FYUKNGvsUVOfD7/AJy07NRm47W1xSXkS5+6lArtou/SGHea6Rof5G5XTvyOGe7tUbuCQJD+RGUdQJqcj9Jyzsgcu7I2owhgumjU7R2awfKHIRv8qGb3Bjq++joCw7fG1pRt+fkr1VfuOm9ZA+l5MACPSwTnQpPeRwvM6P8tFJoR8NyMCdxgjYHtx0Ywd0rt1t2ahh9gDnWbCDGbaYxtkoJOjdGuqNAIJgWSEmHdT1DJTfYWa/266HAR379hmd/YkwEMGGlyAnYeuxKVfmbdxIN/7IGKsJCfPMXH4Ihv9NwIdmZyMc0gwLmYA==
X-YMail-OSG: SJ3KhTcVM1knS9OBn3nctzSSCYZpWaXaWuXlbzPHoHqk55zlcOsme0GHNIrHmBg
 EF1FHWUSxVXunOyf6OXjC9EIAcdyUhKJNmEtiq.Fx38iGZ1YMV26iXQFloLT9UqDsq.uZ_5Boadl
 JZqtdxfN79me0FAWFN2c8goH6E8XrAyuMl_3xBP5YoGkCANfOT681GQMvmwvHXu0fzL_QKi7RGUu
 KavnCptKV18wI3ZzTIoIU06o2imN1qTCgfl6leMT3QwlNdkX1sKbtRjPYROkQTf1kC3x0drFSmKu
 3cLdcZgaH1i9hTGRmnu_fRPbj1DVAbhejfy5Wb5HZn.hfZeXIa0IhfVgJ8hQDWnTxsRvB0gn1yYM
 HjD4oCX1CyVo4lIACUeZt1aZDmnsZLVt3IYFZS8lRUtQ2nBQPs4QfuTq96y8JJBo93xSpsdjYW4G
 VjyVET69AoCOxPLhU4T4IAB9u.bBNIvtXEcSETSf.mf5IgP3zXmIIopAO.qPNgCmtVdJBkOWrMXp
 6A2ZssEUsyEXidyfMrd66hQAHXY82qnpBCZP2BR4w5MLZAnesbEcbGotjCb7iNS61JCWAlSpznus
 bjuNSm23QlGjOW7UkrNPHbmUdK2xp9Oze3DMnYCjHiBc3kyKMzuX1LGIQPhOz3Do1XJMa39e_ube
 3WuC3wC8dlEGDBg67NCmXyrPhfrs52auiF1nVN7KTldNAyO0yjer3YitJ3N5p8.P7UHwyKchCYbE
 m7vpA9IrHa28wyCvYuNdNCdLbEfOU.XENj9NbhL3oj41fgLH3S9gciWEn.a_UIbeL1E3.1TV4RWf
 fRd5ER9vmopeAo0mQ3z0m53Rnnz30KC3Tucq5Cno9zLRtg74G2KYq9EOItVsYgtKS87_ZaH3CIML
 .6OYhSyksFR7m2._Ama299AWwsHWD87NY.Lka1fBxbJZPgEDY_2knRVdXkQi.H29heEfRv9nYelI
 QsPzxWvbRr43Wf5iyVCWNhqjt6e4kf8W0No1FmL0xKBLVCYsyTa6QDVGBEeOXXVIc3.8Yd2r_YL5
 QS81spzAtMyxpJXt3Z_9v2bqlcntwZI5tRJ7.gNNgExDfuC7vg2_wFrZYX_1hQpggzn30v6dxEKe
 xvp94qPYhCh7xggbYt3cKBZyamHf2biF.vbDPSe_jUOMJGfaIKunh6XH_iGPM2YhWbP40XNHEWLi
 59AqniJi2ZOVk3rLQHO9LFwgX8YgBDKr5mD2OWIEZtjMlc9Yd.e6W3L2.QnDPhNLUmLpzECqSz7G
 piZnm5smf.WCHIk0yfoASYNcsdTJqcdXJMAv44PSPOnJHJDyqbSBV0chRbfgUwRGJ7B2TuFT.TBQ
 zWtb4MmubDD8nstCQqpXy3MTUHhBd3cZFkYohqnZmxgv3h3DVVNoHH3HdLzF86qx3V9Ag7NfxLZT
 SkOVOxZTMXTm1CGY3Wm89y0arlCgxXMSQr7H1mr3iKrwSYXc5cJwV4A_WJW_4jgYsX0M5AsyE5Yy
 vL.EezEnanuC2IfCi3TXHHgiTrHYfl6WBTvOpIKR.KIyfyu.9DyJ4wUBUetIGnyK3XoTMUeAAJde
 PBR49HC3Bod4A.ytK7yA9xMR9CinqGUqZzxN1O9ht6zR83weMu8llJ8bA89n8GYNNFHQYONN3Zkn
 VRz8rgKh9Vkes35K9k2OCTVK5dWjLcVdqXiyhtPNEAfCDR0g7O1Nq_7L2CofZMkwEfTBKjCmXBvz
 3dOKqi3U0_fD_xD3XI0yHiaeogbm6VnZyTG1_3m3yMrGddBeUuttQ38w15LjhzIEjgLNGoQm.iMF
 pMf3.EnFtOdcZBOUdq1AXwmSOkHVFOG59a9SSYaBmEUjL7.X93QXIYmVbGotTUTsV4MBA1O1K4D3
 Z6192wdC4TPcUXs82QlSJDiWfV9jAqksS1rgWNPD72uJ_ftgFOW8p.NDV2mS6YjYrd1V.LqZzbkh
 pekYhEFpWz1g6WFUlve0jFoHnHptfEgfbgBUbaRQTDl56TTO6dOlA1vGCEz2BJzKBGg8FOrtgkxp
 dagc1Rd7m7L685W5DKsg0OncnPB.FHvHY9aMJq11e36LazcwLCpEJ7dLMpAk8yw4eBzE0AU3i7Gy
 qz68jewoDiJ9qa5onZLwaoDJ4APp7oNRrwArfqRKtyHkbC08BoZXsQHcP20K0W5FsFrA9GkaHRHq
 UNl.B36hK0d7Yszo_OMZdpPDEVOdCBt9hpf2p5MvrHfAAYqCU0sYCfRz7hz8RmVPfXGd3TdfmGus
 zj.IhhzqEHTQP9mWebV4B8fFZ
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: ac3c5320-53c2-4f37-8367-8682111fc23d
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.bf2.yahoo.com with HTTP; Fri, 26 May 2023 18:11:33 +0000
Date: Fri, 26 May 2023 18:11:31 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <593975973.1685186.1685124691584@mail.yahoo.com>
In-Reply-To: <d8fd2fe9-5449-e2b4-452e-4453045bb21e@gmail.com>
References: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com> <CAFche=gYq5ctyMW7_GVrCzhr8WxcjQz3ydNkV6geHAUS72K=bQ@mail.gmail.com> <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM> <936520968.215976.1684620209911@mail.yahoo.com> <3a73567e-d3c6-83cc-b3ac-0004226581b0@gmail.com> <17799965.336600.1684709874320@mail.yahoo.com> <d8fd2fe9-5449-e2b4-452e-4453045bb21e@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21495 YMailNorrin
Message-ID-Hash: 4YI2TU3I6P2FH6NYIX4FCC7PJUR7A3KX
X-Message-ID-Hash: 4YI2TU3I6P2FH6NYIX4FCC7PJUR7A3KX
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receive with UHD4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4YI2TU3I6P2FH6NYIX4FCC7PJUR7A3KX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3274121045541403643=="

--===============3274121045541403643==
Content-Type: multipart/alternative;
	boundary="----=_Part_1685185_1834646872.1685124691581"

------=_Part_1685185_1834646872.1685124691581
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
Sorry for the late response.My system setup:=C2=A0- UHD 4.4- Ubuntu 22.04 s=
erver version- USRP: X310

The capture code:uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp=
::make("addr=3D192.168.12.2, second_addr=3D192.168.13.2, master_clock_rate=
=3D184.32e6");uhd::stream_args_t stream_args_rx("sc16", "sc16");stream_args=
_rx.channels.push_back(0);stream_args_rx.channels.push_back(1);uhd::rx_stre=
amer::sptr rx_stream =3D usrp->get_rx_stream(stream_args_rx);uhd::stream_cm=
d_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);stream_cm=
d.num_samps =3D num_requested_samples;stream_cmd.stream_now =3D false;strea=
m_cmd.time_spec =3D uhd::time_spec_t(ul_time_spec);rx_stream->issue_stream_=
cmd(stream_cmd);size_t num_rx_samps;unsigned long num_total_samps =3D 0;whi=
le(num_requested_samples !=3D num_total_samps){=C2=A0 =C2=A0num_rx_samps =
=3D rx_stream->recv(buff, num_requested_samples, md, 5.0);=C2=A0 =C2=A0num_=
total_samps +=3D num_rx_samps;}
If I capture exactly num_requested_samples, then the final part of the capt=
ure will not be good. I have to capture 1ms more. In UHD 3.10, I don't see =
this problem.

Thanks for any feedback.



    On Monday, 22 May 2023 at 01:00:32 BST, Marcus D. Leech <patchvonbraun@=
gmail.com> wrote: =20
=20
  On 21/05/2023 18:57, zhou wrote:
 =20
=20
 Thanks Marcus. Yes, I have observed that people are using USRPs for differ=
ent applications. My application is for gNB simulation for 5G. Slot is a te=
rm for signal structure in time domain in physical layer in 5G. Generally, =
its length is 1ms.=20
  Your guess is correct. I am doing timed capture for an exact number of sa=
mples. The transmitter transmits signal endlessly, and the capture is on de=
mand. Now I have to capture 1ms more than what my analysis requires. The 1m=
s extra signals are discarded in analysis but they did protect the signals =
I need. It seems that the receiver shut down too early.=20
 =20
   Could you share with us exactly how you're setting up the capture?=C2=A0=
 What stream arguments are you using, etc?
=20
=20
=20
 =20
      On Saturday, 20 May 2023 at 23:14:16 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
 =20
      On 20/05/2023 18:03, zhou via USRP-users wrote:
 =20
=20
    Hi,=20
  I installed UHD 4.4 recently. I use USRP for both transmission and receiv=
e. I find that EVM in the tail part of the captured signal is higher, e.g.,=
 in a 20-slot capture, in the first 19 slots, EVM~=3D 1.2%, but in slot#20,=
 evm ~=3D2.9%.=20
  UHD 3.10 was fine. I have found this problem in UHD 4.0 and UHD 4.1. Now =
it still exists in UHD 4.4. My solution is to capture 1ms more than what I =
need.=C2=A0=20
  Is this a bug in FPGA?=20
  Thanks, Hongwei=20
  Without telling us what you mean by a "slot", and exactly how you're capt=
uring, it's impossible to say.=C2=A0=C2=A0 Remember, applications
 =C2=A0 of USRPs are *incredibly diverse*, so if you're using nomenclature =
that is specific to your particular work, others may not
 =C2=A0 understand what it is you're doing.=C2=A0=C2=A0 Please be more spec=
ific.
=20
 My guess is that you're doing a timed capture for an exact number of sampl=
es, and that timing has become a bit more
 =C2=A0 "tight" in more recent releases, so you're capturing samples as the=
 receiver is shutting down, or the transmitter is
 =C2=A0 shutting down.
=20
=20
=20
    _______________________________________________
 USRP-users mailing list -- usrp-users@lists.ettus.com
 To unsubscribe send an email to usrp-users-leave@lists.ettus.com
    =20
=20
  =20
------=_Part_1685185_1834646872.1685124691581
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp361dbc4yahoo-style-wrap" style=3D=
"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">=
<div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>Sorry for the late response.</div><div dir=3D"ltr" data-setdir=3D"false">M=
y system setup:&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false">- UHD 4.4=
</div><div dir=3D"ltr" data-setdir=3D"false">- Ubuntu 22.04 server version<=
/div><div dir=3D"ltr" data-setdir=3D"false">- USRP: X310<br></div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse">The capture code:</div><div dir=3D"ltr" data-setdir=3D"false"><div><di=
v>uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make("addr=3D=
192.168.12.2, second_addr=3D192.168.13.2, master_clock_rate=3D184.32e6");</=
div><div>uhd::stream_args_t stream_args_rx("sc16", "sc16");</div><div>strea=
m_args_rx.channels.push_back(0);</div><div>stream_args_rx.channels.push_bac=
k(1);</div><div>uhd::rx_streamer::sptr rx_stream =3D usrp-&gt;get_rx_stream=
(stream_args_rx);</div><div>uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t:=
:STREAM_MODE_NUM_SAMPS_AND_DONE);</div><div>stream_cmd.num_samps =3D num_re=
quested_samples;</div><div>stream_cmd.stream_now =3D false;</div><div>strea=
m_cmd.time_spec =3D uhd::time_spec_t(ul_time_spec);</div><div>rx_stream-&gt=
;issue_stream_cmd(stream_cmd);</div><div>size_t num_rx_samps;</div><div>uns=
igned long num_total_samps =3D 0;</div><div>while(num_requested_samples !=
=3D num_total_samps)</div><div>{</div><div>&nbsp; &nbsp;num_rx_samps =3D rx=
_stream-&gt;recv(buff, num_requested_samples, md, 5.0);</div><div>&nbsp; &n=
bsp;num_total_samps +=3D num_rx_samps;</div><div>}</div></div><br></div><di=
v dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color: rgb(0, 0, 0=
); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">If I capture=
 exactly num_requested_samples, then the final part of the capture will not=
 be good. I have to capture 1ms more. In UHD 3.10, I don't see this problem=
.</span></span><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><=
div dir=3D"ltr" data-setdir=3D"false">Thanks for any feedback.</div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br><=
/div>
       =20
        </div><div id=3D"ydp2f081ef7yahoo_quoted_5454483955" class=3D"ydp2f=
081ef7yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 22 May 2023 at 01:00:32 BST, Marcus D. Leech=
 &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp2f081ef7yiv9314023769"><div>
    <div class=3D"ydp2f081ef7yiv9314023769moz-cite-prefix">On 21/05/2023 18=
:57, zhou wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;" class=3D"ydp2f081ef7yiv931402376=
9ydpe6c642e6yahoo-style-wrap">
        <div dir=3D"ltr">Thanks Marcus. Yes, I have
          observed that people are using USRPs for different
          applications. My application is for gNB simulation for 5G.
          Slot is a term for signal structure in time domain in physical
          layer in 5G. Generally, its length is 1ms.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Your guess is correct. I am
          doing timed capture for an exact number of samples. The
          transmitter transmits signal endlessly, and the capture is on
          demand.</div>
        <div dir=3D"ltr">Now I have to capture 1ms
          more than what my analysis requires. The 1ms extra signals are
          discarded in analysis but they did protect the signals I need.</d=
iv>
        <div dir=3D"ltr">It seems that the receiver
          shut down too early.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
      </div>
   =20
    Could you share with us exactly how you're setting up the capture?&nbsp=
;
    What stream arguments are you using, etc?<div id=3D"ydp2f081ef7yiv93140=
23769yqtfd83253" class=3D"ydp2f081ef7yiv9314023769yqt6538991588"><br clear=
=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-seri=
f;font-size:13px;" class=3D"ydp2f081ef7yiv9314023769ydpe6c642e6yahoo-style-=
wrap">
        <div><br clear=3D"none">
        </div>
      </div>
      <div id=3D"ydp2f081ef7yiv9314023769ydpac98b132yahoo_quoted_5534964263=
" class=3D"ydp2f081ef7yiv9314023769ydpac98b132yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-=
serif;font-size:13px;color:#26282a;">
          <div> On Saturday, 20 May 2023 at 23:14:16 BST, Marcus D.
            Leech <a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com"=
 class=3D"ydp2f081ef7yiv9314023769moz-txt-link-rfc2396E" rel=3D"nofollow" t=
arget=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br clear=3D"none">
          </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"ydp2f081ef7yiv9314023769ydpac98b132yiv2421597430">
              <div id=3D"ydp2f081ef7yiv9314023769ydpac98b132yiv2421597430yq=
t84086" class=3D"ydp2f081ef7yiv9314023769ydpac98b132yiv2421597430yqt8146242=
889">
                <div>
                  <div class=3D"ydp2f081ef7yiv9314023769ydpac98b132yiv24215=
97430moz-cite-prefix">On
                    20/05/2023 18:03, zhou via USRP-users wrote:<br clear=
=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue, Helvetica, Aria=
l, sans-serif;font-size:13px;" class=3D"ydp2f081ef7yiv9314023769ydpac98b132=
yiv2421597430ydp7a60654eyahoo-style-wrap">
                    <div dir=3D"ltr">Hi,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I installed UHD 4.4 recently. I use
                      USRP for both transmission and receive. I find
                      that EVM in the tail part of the captured signal
                      is higher, e.g., in a 20-slot capture, in the
                      first 19 slots, EVM~=3D 1.2%, but in slot#20, evm
                      ~=3D2.9%.</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">UHD 3.10 was fine. I have found this
                      problem in UHD 4.0 and UHD 4.1. Now it still
                      exists in UHD 4.4. My solution is to capture 1ms
                      more than what I need.&nbsp;</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Is this a bug in FPGA?</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Thanks,</div>
                    <div dir=3D"ltr">Hongwei</div>
                    <br clear=3D"none">
                  </div>
                  Without telling us what you mean by a "slot", and
                  exactly how you're capturing, it's impossible to
                  say.&nbsp;&nbsp; Remember, applications<br clear=3D"none"=
>
                  &nbsp; of USRPs are *incredibly diverse*, so if you're
                  using nomenclature that is specific to your particular
                  work, others may not<br clear=3D"none">
                  &nbsp; understand what it is you're doing.&nbsp;&nbsp; Pl=
ease be more
                  specific.<br clear=3D"none">
                  <br clear=3D"none">
                  My guess is that you're doing a timed capture for an
                  exact number of samples, and that timing has become a
                  bit more<br clear=3D"none">
                  &nbsp; "tight" in more recent releases, so you're capturi=
ng
                  samples as the receiver is shutting down, or the
                  transmitter is<br clear=3D"none">
                  &nbsp; shutting down.<br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div id=3D"ydp2f081ef7yiv9314023769ydpac98b132yqt58347" class=
=3D"ydp2f081ef7yiv9314023769ydpac98b132yqt8146242889">_____________________=
__________________________<br clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:u=
srp-users@lists.ettus.com" class=3D"ydp2f081ef7yiv9314023769moz-txt-link-fr=
eetext" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><b=
r clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect" href=3D"mai=
lto:usrp-users-leave@lists.ettus.com" class=3D"ydp2f081ef7yiv9314023769moz-=
txt-link-freetext" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@list=
s.ettus.com</a><br clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br clear=3D"none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_1685185_1834646872.1685124691581--

--===============3274121045541403643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3274121045541403643==--
