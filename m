Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 453CBE2842
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 04:37:02 +0200 (CEST)
Received: from [::1] (port=58812 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNSzj-00070U-1o; Wed, 23 Oct 2019 22:36:59 -0400
Received: from sonic316-21.consmr.mail.ne1.yahoo.com ([66.163.187.147]:36234)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jasonmcbride94@yahoo.com>)
 id 1iNSzf-0006w3-1i
 for usrp-users@lists.ettus.com; Wed, 23 Oct 2019 22:36:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1571884574; bh=qrWXh0lpKj3AUkpRihDgp2DioTZ6RP9PK1v/UZy33dk=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=WIvHkIezm/Uq5HytUX52oKZ3VZjw9KgVqNBLzTeiUS7T3y+q1HjQtLFVCVh7Z4U2NQhDiUGYRRF4P1nq60Y1ujMwz3+tqeiuoVvioLeRMVosFHSfG54rBn8tje1p5Prl7O+nNcionAS2QjuPmPrcg7o39pwxMc1d3vALc8bdYH3IsaK2SpztZN8Cl/AcmzsPDSUzlseqJ921nhp/ypvrzUTuWrvFos3tQ/46ZLj2WKQuQ2Q+qZRC77HfbBu+TrKPiOXvw+bec5q9TAT4tzLMCpu5Znr7kLXiUtYOBBHBWPugE95zhvduZ0W+4k9sH2SyVsy6Sdq8J7NkyB+pD5EFxg==
X-YMail-OSG: MVNK.6cVM1nExBXDWqaxLpDudI7xLUf858x_T7X59fyJd7DGPmaWHrQe4dvPYj_
 DTnS17NPlzYC0i_pYPjBYSHrR1ukPu8WPk9wbQ681BZ3QBvjkiPKRRhv20wpLD9LyaLP8EXeM7bb
 464LwqhjcZ3EFpLheNvt8GNIIrE9rc8_sGj.CrnSygxiA7JBYNU42C3pE_HnVEx.qn4RXCSkN16P
 Hzc_jdXe21_LOnRVT4sWh7ydKoJxzHkiAo11K3LhC31WDTFEMJv5a1s7SiyX8I964JVjKQhUN_vh
 bWI83McxaOV4vgFNfKvLc3OT5kvxtCKyCQjjLjuAH8_Gp0y8ug_weDwBuAU7x6A55R8lZNWQgmvZ
 QjJMvs0bHG5O8yOPAg3sie6AoBCEWANQRjiRm6DqNM.fxoJQTEmLoV_kWkaDX2TVPXjKLEc5kdL_
 47uyE72mVZXedU0UeBgtiFBRGySh1UAPaJJ0ttiC05WJwKr_QES21EC5rxHlRloX5uPeezhwJCc6
 7WAqxokGSvmjBZcvV702hMEcez1wkosNi28OnniPsuzVdHb3eXhKoOIEQfGqWehHjBiAYddZTlR_
 q_ijfMzGfh90oZO0yn0jAQYX9nscon0auYYTUXCoZwK98OcpINZ1t5QJHrss0V3Ba9YxNLrRKnWZ
 uxF6CVSs1NNe6h6xqMUV30mFo3RJfydQhBAl.hYlOjr.p73SPqz_5eL7k_aCf5NNQzeA5xSaRNjr
 MFQWHesAn1s0nTGGQlgXJ0VkrIqafg_9kz2jDjApDsrcMsVAB_sFfUA9d7XS_KSUiBW2X3RUTGEr
 eE2LaxwC0w3uhBTVMHhE8BPjw0tAie7hKZOQ01pAlW3I3BqPwZMJPs6kScA3BwRdJWWLgoO62gcp
 .Js9RNiqdV8.2kKNIhC2PEbzBtbInUwDkaCU7Fswy50Xvpk1Upx6ZmyI2USHAKHjEbOad1q.FZl5
 pA74uyCukuNF7G.LdCGqsO_sexMdH1fqfOCrAgCksH.GWNaJOhKppGgrlN1o8aDiJXk6TsWZhdq.
 q3KtlUtdrSzX0DbWj1Qh8xd_CcCQnpsN6fxoLjwt93H1fomP0oBwXp0DhCX3kDYArZvphReyX8uK
 hTU3Vh7dp3AkItACHKEjLpjhA1u9ffQH0p0Z3GlwAHoJHwxbSZIMzLTLTApjz7oeYmhnHCYC_uL1
 Q1c0Z.lt9eV0ftulj2T5S_tTOB55WtlVQSQrzEugU57279ThEBnya06BIEy.o8XZqUwNFx3223bT
 ZwegNigQdLLsRSzDDq3u.XBZ58BXg2qAXZxxPLNshsz5sXmH.Q_8FBaqo_dAq9qMroP91jIBaI2p
 6Iafzijgq.1vXXNC6DxkB7dOymG5kkpLml.KZBCg8j_JX
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.ne1.yahoo.com with HTTP; Thu, 24 Oct 2019 02:36:14 +0000
Date: Thu, 24 Oct 2019 02:36:13 +0000 (UTC)
To: Sam Reiter <sam.reiter@ettus.com>
Message-ID: <295942482.1328113.1571884573171@mail.yahoo.com>
In-Reply-To: <CANf970bHqYcsSED9SW09f_bahsjMVn2hBSxjjCJ=w-vJ=_oFTw@mail.gmail.com>
References: <1147349683.4033270.1571526677680.ref@mail.yahoo.com>
 <1147349683.4033270.1571526677680@mail.yahoo.com>
 <CANf970bHqYcsSED9SW09f_bahsjMVn2hBSxjjCJ=w-vJ=_oFTw@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14593 YMailNorrin Mozilla/5.0 (Macintosh;
 Intel Mac OS X 10_15) AppleWebKit/605.1.15 (KHTML, like Gecko)
 Version/13.0.2 Safari/605.1.15
Subject: Re: [USRP-users] tx_time, L, & USRP
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
From: Jason McBride via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason McBride <jasonmcbride94@yahoo.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2312263477528794501=="
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

--===============2312263477528794501==
Content-Type: multipart/alternative; 
	boundary="----=_Part_1328112_907844961.1571884573169"
Content-Length: 8078

------=_Part_1328112_907844961.1571884573169
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks! I thought that things were sync'd between the USRP and the program=
, but I haven't used the *_pps() functions. I'll give them a shot.
    On Tuesday, October 22, 2019, 02:35:33 PM PDT, Sam Reiter <sam.reiter@e=
ttus.com> wrote: =20
=20
 Hey Jason,
Are you making sure that you're setting your TX time tag to be 2 seconds ah=
ead of the USRP's sense of time? A late packet means that the time a packet=
 should be executed on has already passed (as far as the USRP is concerned)=
.=20

You can use calls like:
get_time_now()get_time_last_pps()set_time_now()set_time_next_pps()
To understand the radio's sense of time and reset it as you see fit. Having=
 not seen your code, I'd recommend utilizing the above functions (https://f=
iles.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html) to align the ti=
mes you use to populate the tx_time tag.=20

-Sam

On Sat, Oct 19, 2019 at 6:14 PM Jason McBride via USRP-users <usrp-users@li=
sts.ettus.com> wrote:

Hey everybody, I'm trying to put together a simple bursting example. In gnu=
radio companion I'm generating a PDU, using the framer block, converting to=
 a tagged stream, and then inserting a tx_time tag in an OOT python block. =
The tx_time tag is at the beginning of the streamed frame, just prior to th=
e packet_len tag. I send it to the USRP next.
The USRP is sync'd to PC time at the beginning of the flowgraph, and I set =
the tx_time tag for two seconds in the future. The USRP does seem to transm=
it at that time, but it generates lots of L error symbols, and after the in=
itial transmission stops transmitting. I can see the stream sent to the USR=
P via a tag debug block, so I know the stream is received by the USRP signi=
ficantly prior to transmittal.
Any thoughts as to what's going on? is there something I need to configure =
on the USRP?=C2=A0
Thank you,
Jason_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

 =20
------=_Part_1328112_907844961.1571884573169
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpacdb2649yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks! I thought that thing=
s were sync'd between the USRP and the program, but I haven't used the *_pp=
s() functions. I'll give them a shot.</div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_2515675194" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, October 22, 2019, 02:35:33 PM PDT, Sam Reit=
er &lt;sam.reiter@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv7834439841"><div><div dir=3D"ltr"><div c=
lass=3D"yiv7834439841gmail_default" style=3D"font-family:verdana, sans-seri=
f;"></div><div dir=3D"ltr"><div class=3D"yiv7834439841gmail_default" style=
=3D"font-family:verdana, sans-serif;">Hey Jason,</div><div class=3D"yiv7834=
439841gmail_default" style=3D"font-family:verdana, sans-serif;"><br clear=
=3D"none"></div><div class=3D"yiv7834439841gmail_default" style=3D"font-fam=
ily:verdana, sans-serif;">Are
 you making sure that you're setting your TX time tag to be 2 seconds=20
ahead of the USRP's sense of time? A late packet means that the time a=20
packet should be executed on has already passed (as far as the USRP is conc=
erned). <br clear=3D"none"></div><div class=3D"yiv7834439841gmail_default" =
style=3D"font-family:verdana, sans-serif;"><br clear=3D"none"></div><div cl=
ass=3D"yiv7834439841gmail_default" style=3D"font-family:verdana, sans-serif=
;">You can use calls like:</div><div class=3D"yiv7834439841gmail_default" s=
tyle=3D"font-family:verdana, sans-serif;"><br clear=3D"none"></div><div cla=
ss=3D"yiv7834439841gmail_default" style=3D"font-family:verdana, sans-serif;=
">get_time_now()</div><div class=3D"yiv7834439841gmail_default" style=3D"fo=
nt-family:verdana, sans-serif;">get_time_last_pps()</div><div class=3D"yiv7=
834439841gmail_default" style=3D"font-family:verdana, sans-serif;">set_time=
_now()</div><div class=3D"yiv7834439841gmail_default" style=3D"font-family:=
verdana, sans-serif;">set_time_next_pps()</div><div class=3D"yiv7834439841g=
mail_default" style=3D"font-family:verdana, sans-serif;"><br clear=3D"none"=
></div><div class=3D"yiv7834439841gmail_default" style=3D"font-family:verda=
na, sans-serif;">To
 understand the radio's sense of time and reset it as you see fit.=20
Having not seen your code, I'd recommend utilizing the above functions (<a =
rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"https://files.ett=
us.com/manual/classuhd_1_1usrp_1_1multi__usrp.html">https://files.ettus.com=
/manual/classuhd_1_1usrp_1_1multi__usrp.html</a>) to align the times you us=
e to populate the tx_time tag. <br clear=3D"none"></div><div class=3D"yiv78=
34439841gmail_default" style=3D"font-family:verdana, sans-serif;"><br clear=
=3D"none"></div><div class=3D"yiv7834439841gmail_default" style=3D"font-fam=
ily:verdana, sans-serif;">-Sam</div></div><br clear=3D"none"></div><br clea=
r=3D"none"><div class=3D"yiv7834439841gmail_quote"><div class=3D"yiv7834439=
841yqt0857620110" id=3D"yiv7834439841yqt18924"><div class=3D"yiv7834439841g=
mail_attr" dir=3D"ltr">On Sat, Oct 19, 2019 at 6:14 PM Jason McBride via US=
RP-users &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></div><blo=
ckquote class=3D"yiv7834439841gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex;"><div><div style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div dir=3D"ltr">Hey everybody, I'm trying to put together a simple burs=
ting example. In gnuradio companion I'm generating a PDU, using the framer =
block, converting to a tagged stream, and then inserting a tx_time tag in a=
n OOT python block. The tx_time tag is at the beginning of the streamed fra=
me, just prior to the packet_len tag. I send it to the USRP next.</div><div=
 dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">The USRP is sync'd t=
o PC time at the beginning of the flowgraph, and I set the tx_time tag for =
two seconds in the future. The USRP does seem to transmit at that time, but=
 it generates lots of L error symbols, and after the initial transmission s=
tops transmitting. I can see the stream sent to the USRP via a tag debug bl=
ock, so I know the stream is received by the USRP significantly prior to tr=
ansmittal.</div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">=
Any thoughts as to what's going on? is there something I need to configure =
on the USRP?&nbsp;</div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=
=3D"ltr">Thank you,</div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=
=3D"ltr">Jason</div></div></div>___________________________________________=
____<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-use=
rs@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_1328112_907844961.1571884573169--


--===============2312263477528794501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2312263477528794501==--

