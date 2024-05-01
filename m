Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDCC8B8C6C
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 17:04:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 343D03858A9
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 11:04:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714575864; bh=ZjHEJ/dMpFlF3wl0XeqmxrmF5LjIdx90FF4/MOJ+T5I=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=CAVdgTvfXAHmB+fbqY587soN0XOG4vTH8jyA1ZcpwKzk/hV4m5UtO0aGy0MDKmwss
	 8NQxgc/QHGhDjTJL1CLJZqxspyAG7eWeAv8ZWR2EYWcZAahBjaTO5FeazpVzHEk0n8
	 itBBRrm80MbVNq8UcdaLWXhzKzIIrLFazTmguiFoila67sqSQ1+sHXo5kUV8aTCkCk
	 5oaSDfn8aTJiw/sZ+CWQmeoNMZXGSIk+Mr2Dtr+qQhtI3EmVtyMlECGg9SCRq0w8Xr
	 FNDsn1G/an6JAMb+TuHVZxV+YQ4sPtDCC9qlYFXRxjjuwZpLTc05yxH93XQg9K9uof
	 0zQ7RD4Apxi3A==
Received: from sonic322-26.consmr.mail.bf2.yahoo.com (sonic322-26.consmr.mail.bf2.yahoo.com [74.6.132.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 176B4385876
	for <usrp-users@lists.ettus.com>; Wed,  1 May 2024 11:03:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="cl9/E5c6";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1714575818; bh=Z/pTihU3EXphX1W17mBrQ15xd8YKaNx5DjWUumBOxhg=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=cl9/E5c6kIGmOpR60nx4QdM0qdGJXdXgmaB1OBvEyWfNqcTL4LNgWV6Gqs4pheWrKweoIRCcmfNXLQ3N9Mhy4LpZszJlYTOo3RSE7AHjt1UK1NOeTziRryZi5SGwQOf2qY93C3IF401zprkvlnP2E/jRdX0AgysggW0fZaGP75YGPwTn34XqUryKnuKG8NMHm/V2N2NqSEk6Bez3QKYt5DQLjkc85nlCnXaew/UDrjmPUFRm2kbLaM8WSn2z24giEe/Qa+YEajMK1saaRggdJdStEc8/bnnOjGZKSsxmEkMLgn4IMlErK04ER0NKS3imgpoSR4J+qsR5P//dAgLNqA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1714575818; bh=bEEWtKVzS8fjYWFGnTZPozmKZryfzRSkczYs0s+KpWY=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=YwTdf7ElE08ZZHhJ+xHYl6CIHumAHz8jrP+v7OOrqQoDS4+LseZPVM+N0Av6RFtcgj6aKfqlVQUn7RzQQoz9aUl/MgpPEOXskPTWWu7346C6t7tWy/sQhPuaIrtlS241eqvLBasvgUn0/dF+pOo0WJoU+fGblivIwjYln2Qva6vqbbtEdZpJ0/Zu08m+hovajIvIj4lRO/FzJJ9jreAcU+8/b9x65tDl0ycRekMms6/ZCsXFhR/4BFxLuoJMBqTaXa7zm53V9j0yzKazXssJvcOQyCFph6GMKUUcSFcUSTBBcXN47I5YFmTuHzW0jaWAKEkq7zaOovMxrXs/ewHEcg==
X-YMail-OSG: gPVFN70VM1noS.jRFXZ2_veEBT9tqg.Tj9nsuU._tB4v4g5pGqtaQ7Cs3g.mGNa
 wmyHRH3RV.eVv5KEfvC8X9mHXlrgKZV_W1jKmTJbvgBcs9mwciMY8W8xv2u3Mm8AdwSnSIOAJDTx
 nrbUO6NKRmT_cDYvv34tuYclRn4iA1vG1lOIzzrarHQyBNu40n9AG_mY9V.IQILL2uz8ue7F9vN2
 sIZazMILfOqK9KfualqxXb4eHa5AG0_u5L2Qg7zyqzlXmgT7mvaTkej_Lc4hJfFSh0CT8TXs5jaA
 MnODuZFznthJe1XxekOI49W0oHKwJd5KYx4FBEUSspnNuJZBZIEXMkQF4dRHYJvkelKYcvxj6jFj
 B11QGRQLUJRlLlTZ5DtA6NA.5d1uJXSI7c6Q1tUPjHmZcu8yeCtCYy9T04zi9IvfyCVQJISkltkU
 JhEF_j3aglSfxbUIklRmlTfACl0KNo6_RhDSSi3gEY58IIkDJeYJJiGqooIWhXnuRyY_72fz.LPy
 utMZDmUdAt9zK7EnN3r_PJVIEE0J2yOWsDFF8IXTULq12JRwj32X5.SSjwcyFR6FX7rWrwL8l21W
 IvQt2eXcBbYXzu_4k6N5QA9JQ31k8F8ouj_66ZQWUbnuXP19Cu7r.IjzYmQc1WqJdg5kEq.dQQRG
 fQeSoivzqqzvfWPDJdvD_tGQu1b.ebRgyPtAkTFxSAGgru_bRahIOdGYlNuKNXdBE4NaiRSiAwHS
 jEGCpE7TzUJ_Yubyd.yKzrYYZr7nRO4MomNBUWujEctLQgEmbaTZCnbfu2jD2XiE9kAJKkScSA7d
 vh4YgKLKO8P6tOHfMy3y9jgspkrCtzdl_yRvRvs2AbrnBWsVb97hS1AU3J8ixQHdw6g3zTH319xr
 XPED.uDdt6O0GkJ5hCrRruZlEWpEJPlfoBXsZs4a7XFAHoKbKZUM3sY6pSWFr9PHu4YX6y4DwI3L
 3IY7YeUC5F3INMOixAEspFZcKPH7ifAzXT7AqPRmu0mg0qXpq5Bul59oq3mW86BkAc5Hp1TvOVys
 sIIEeDGQlNuMlWsYAqCHpXvpnWWIoIonBfgyWgwNe_thRBquMHiUtGE_sDHn3_w8JXqA4c2kmGLI
 pdgA3xt99CwzjDl9dc1h3HemR5AVtYbGCdy6RjvzRFTFBAjpePL9mAa.4b3UvqY6D.fNacP1WKbn
 sY4nQXqtkNmrVIFYKORddp5iOxdCs9Pau..jI9A2GIxBa0P6zX5RaqI_sqH7IIJLQL84SL0IR1Xk
 jwTdFF5G0uOM44VgyKQzz2HxoUOmMNnbQMbekvvNg9bLZVJvcAowcegSxGaQOEFIA0sO51Mo2CBE
 kx0bgphNmt3sMtvbDAMsmcXkEWZXHjVlR.KprWCJgualXFn2Up26WoDiPyTxAgfAlUy57oFx4ZBa
 2TPZAk8JRhz3PD32eyjLorlHdE4ubBMZrEr.9DcfkGIXWRePIeIxQ9yZpMhxpXQg9qy.CVwqUMn9
 7iwJZ6fcWDqNi3Nfzb6UbguYVjuYaUnFRdUlJ49Zwrwpclk0YMQk8G7vGRs_uHQZ0DiiYRBYEnud
 HAAGZ.__JTROz_br4fOk_iIMTDkR0IHfl1SqVk38vbBU98hFfBVd7dg85e7oor2y2MAwqh2HJpfJ
 C.xxJLh30AkRlWZa0t2unaR8X1gHbamPf6b5vmOiq4cDuaaLQLLwxM5.roZR4OksGQMaGllgY_Nk
 RU05szpEGulb4MmV.fMj65RYkRWWqqazcwgbN9ObK3obEInGtsvvOiiS90Ta7iJybFAmVFan4h1K
 T07ePJrL7ixOECmFkrn5ziWSGrqCQIYb5aN_MsU1PzpWQwexaj3mP8K8wUP7DnPXWOiFThp2hXMD
 Twgf7IucaNPxMZBa2_l4QPf2Hkojb676qAckeGWPqEBEtEHZ62gGuhp_nf1rK2q.6sraQ8BJ.A7K
 SRuRf5GG9T6d.JHXlt2GkQGj4V0CwOjRvZA0nKM8TawenlF.0JMrxfnUDFl53cqeCl2f2R.noIUw
 RzvsYqk_Wpoz2FLd_ibH92VbwtqERgQEjWM6kjJVB6oZbrJLBUc16I4daVtaMXe_jkaz4chYz.Pk
 7Bub89VsAStVCNCX9gPiXc8YLwDtQIJWz8kL3Zkn7oJ8nQOZ0K7YC.njLgi8mbL4iqyV7rqpmZNa
 DQEMQqTHIVfIocOEb2XrOXV.Lrg9537x.uEkV0yAheA5D7WkpyGCmWeoi3dYQes.a8vRBYlOaFkQ
 yI11Gwvi8mmHhGZKNYtKsQiS4wGn8AdGOaBP8JuLggf1CsjtIHIWcjiC6oyxYvyAG8NKV
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 5c4d466e-490f-41aa-bf32-87edd63a0fba
Received: from sonic.gate.mail.ne1.yahoo.com by sonic322.consmr.mail.bf2.yahoo.com with HTTP; Wed, 1 May 2024 15:03:38 +0000
Date: Wed, 1 May 2024 15:00:08 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1458949585.3180965.1714575608497@mail.yahoo.com>
In-Reply-To: <d1a9560c-99c6-423b-ba10-26f08ee1b82e@gmail.com>
References: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com> <e39abf8d-6490-481e-bbbc-b89593e88d2f@gmail.com> <336160565.3149887.1714566315941@mail.yahoo.com> <8fb7d502-818c-41e8-a5d7-455fa7778e38@gmail.com> <236821295.3178397.1714572681617@mail.yahoo.com> <d1a9560c-99c6-423b-ba10-26f08ee1b82e@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22256 YMailNorrin
Message-ID-Hash: UITMFH6WK4ZN3SCOTSK2NUC43JDA7JND
X-Message-ID-Hash: UITMFH6WK4ZN3SCOTSK2NUC43JDA7JND
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Freq synchronization between
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UITMFH6WK4ZN3SCOTSK2NUC43JDA7JND/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============1095277063391768174=="

--===============1095277063391768174==
Content-Type: multipart/alternative;
	boundary="----=_Part_3180964_53397806.1714575608495"

------=_Part_3180964_53397806.1714575608495
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=20

    On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D. Leech <patchvonbrau=
n@gmail.com> wrote: =20
=20
  On 01/05/2024 10:11, zhou via USRP-users wrote:
 =20
=20
 Hi Marcus,=20
  Thanks for your response.=20
   "Are you setting up clocking identically for both USRPs?=C2=A0=C2=A0 Tha=
t is setting the reference clock to "external" and the 1PPS source to "exte=
rnal" on both devices?=C2=A0=C2=A0 Are you using a single multi_usrp object=
 for all RX channels?"=20
  Yes, I use multi_usrp multi_usrp::make('addr0=3D192.168.12.2,second_addr0=
=3D192.168.13.2,addr1=3D192.168.14.2,second_addr1=3D192.168.15.2,master_clo=
ck_rate=3D184.32e6')
 =C2=A0
 "external" set for both ref and pps: usrp->set_clock_source("external") us=
rp->set_time_source("external")
 I think this should automatically set both devices.
=20
 "What type of daughtercards are in your X310?"
  UBX=20
  Kind regards.=20
   And, to clarify, this is an Octoclock-G, and not a plain Octoclock ?
It is OctoClock GPSDO, and Internal is used.=C2=A0
=20
=20
=20
 =20
 =20
      On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
 =20
      On 01/05/2024 08:25, zhou via USRP-users wrote:
 =20
=20
    Hi All,=20
  I am trying to use 4Rx and 4Tx antennas from two X310 USRPs. I hope the r=
eceived signals have stable phase relationship but they don't seem to be. I=
 am wondering why and how to fix it.=20
  I measured the phase using the connection as below:=20
  cos(t)+i*sin(t) signal is split into and received on four Rx antennas.=C2=
=A0Two X310s are connected to the same OctoClock for 10MHz Ref and PPS. Tx =
and Rx commands are all timed. The measurement results are as below:=20
 =20
 The Tx signal is continuous during test. I measured phase every second for=
 20 sec. In the 2nd USRP, the phases are stable on both antennas while it i=
s not in the 1st. If I change the Tx signal to the 1st USRP, then the resul=
ts swap - phases become stable in the 1st USRP and unstable in the 2nd.=20
  My first though was that there might be small CFO between USRPs even thou=
gh both are connected to the OctoClock, but CFO should have caused linear c=
hange. Here, the phase offset is not linear and kind of random within 20 se=
cond measurement.=20
  What can be the reason? Any suggestion will be appreciated.
=20
 Kind regards, H.  Are you setting up clocking identically for both USRPs?=
=C2=A0=C2=A0 That is setting the reference clock to "external" and the 1PPS=
 source to "external" on both devices?=C2=A0=C2=A0 Are you using a single m=
ulti_usrp object for all RX channels?
=20
 What type of daughtercards are in your X310?
=20
=20
    _______________________________________________
 USRP-users mailing list -- usrp-users@lists.ettus.com
 To unsubscribe send an email to usrp-users-leave@lists.ettus.com
    =20
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_3180964_53397806.1714575608495
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp8ec9f7f8yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div><br></div><div><br></div>
        
        </div><div id="ydpc994c9a6yahoo_quoted_5461441577" class="ydpc994c9a6yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                        On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
                
                
                <div><div id="ydpc994c9a6yiv4349751442"><div>
    <div class="ydpc994c9a6yiv4349751442moz-cite-prefix">On 01/05/2024 10:11, zhou via
      USRP-users wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div><div><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" class="ydpc994c9a6yiv4349751442ydpb1f78624yahoo-style-wrap">
        <div dir="ltr">Hi Marcus,</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">Thanks for your response.</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">
          <div><span style="color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">"Are
              you setting up clocking identically for both USRPs?&nbsp;&nbsp; That
              is setting the reference clock to "external" and the 1PPS
              source to "external" on both devices?&nbsp;&nbsp; Are you using a
              single multi_usrp object for all RX channels?"</span></div>
          <div><br clear="none">
          </div>
          <div dir="ltr">Yes, I use multi_usrp
            multi_usrp::make(<span>'addr0=192.168.12.2,second_addr0=192.168.13.2,addr1=192.168.14.2,second_addr1=192.168.15.2,master_clock_rate=184.32e6'</span>)<br clear="none" style="color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">
            &nbsp;<br clear="none">
            <span><span style="color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">"external"
                set for both ref and pps:</span></span></div>
          <div dir="ltr"><span>usrp-&gt;set_clock_source("external")</span></div>
          <div dir="ltr"><span>usrp-&gt;set_time_source(<span><span style="color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">"external")</span></span></span><br clear="none">
            I think this should automatically set both devices.<br clear="none">
            <br clear="none" style="color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">
            <span style="color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">"What
              type of daughtercards are in your X310?"</span><br clear="none" style="color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">
          </div>
          UBX</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">Kind regards.</div>
        <div dir="ltr"><br clear="none">
        </div>
      </div>
    
    And, to clarify, this is an Octoclock-G, and not a plain Octoclock ?<div id="ydpc994c9a6yiv4349751442yqtfd85029" class="ydpc994c9a6yiv4349751442yqt3149981368" dir="ltr" data-setdir="false"><br></div><div id="ydpc994c9a6yiv4349751442yqtfd85029" class="ydpc994c9a6yiv4349751442yqt3149981368" dir="ltr" data-setdir="false">It is OctoClock GPSDO, and Internal is used.&nbsp;<br clear="none">
    <br clear="none">
    <br clear="none">
    <blockquote type="cite">
      <div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" class="ydpc994c9a6yiv4349751442ydpb1f78624yahoo-style-wrap">
        <div><br clear="none">
        </div>
        <div><br clear="none">
        </div>
      </div>
      <div id="ydpc994c9a6yiv4349751442ydp5189b7afyahoo_quoted_4632613607" class="ydpc994c9a6yiv4349751442ydp5189b7afyahoo_quoted">
        <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
          <div> On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D.
            Leech <a shape="rect" href="mailto:patchvonbraun@gmail.com" class="ydpc994c9a6yiv4349751442moz-txt-link-rfc2396E" rel="nofollow" target="_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br clear="none">
          </div>
          <div><br clear="none">
          </div>
          <div>
            <div id="ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590">
              <div id="ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590yqt92825" class="ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590yqt7336830375">
                <div>
                  <div class="ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590moz-cite-prefix">On
                    01/05/2024 08:25, zhou via USRP-users wrote:<br clear="none">
                  </div>
                  <blockquote type="cite"> </blockquote>
                </div>
                <div>
                  <div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" class="ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590ydpc723dc89yahoo-style-wrap">
                    <div dir="ltr">Hi All,</div>
                    <div dir="ltr"><br clear="none">
                    </div>
                    <div dir="ltr">I am trying to use 4Rx and 4Tx
                      antennas from two X310 USRPs. I hope the received
                      signals have stable phase relationship but they
                      don't seem to be. I am wondering why and how to
                      fix it.</div>
                    <div dir="ltr"><br clear="none">
                    </div>
                    <div dir="ltr">I measured the phase using the
                      connection as below:</div>
                    <div dir="ltr"><img title="Inline image" alt="Inline image" style="max-width:800px;" class="ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590yahoo-inline-image" data-inlineimagemanipulating="true"><br clear="none">
                    </div>
                    <div dir="ltr">cos(t)+i*sin(t) signal is split into
                      and received on four Rx antennas.&nbsp;<span><span style="color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">Two
                          X310s are connected to the same OctoClock for
                          10MHz Ref and PPS. Tx and Rx commands are all
                          timed. The measurement results are as below:</span></span></div>
                    <div dir="ltr"><br clear="none">
                    </div>
                    <div dir="ltr"><br clear="none">
                      <span></span>The Tx signal is continuous during
                      test. I measured phase every second for 20 sec. In
                      the 2nd USRP, the phases are stable on both
                      antennas while it is not in the 1st. If I change
                      the Tx signal to the 1st USRP, then the results
                      swap - phases become stable in the 1st USRP and
                      unstable in the 2nd.</div>
                    <div dir="ltr"><br clear="none">
                    </div>
                    <div dir="ltr">My first though was that there might
                      be small CFO between USRPs even though both are
                      connected to the OctoClock, but CFO should have
                      caused linear change. Here, the phase offset is
                      not linear and kind of random within 20 second
                      measurement.</div>
                    <div dir="ltr"><br clear="none">
                    </div>
                    <div dir="ltr">What can be the reason? Any
                      suggestion will be appreciated.<br clear="none">
                      <span></span><br clear="none">
                      <span></span>Kind regards,</div>
                    <div dir="ltr">H.</div>
                  </div>
                  Are you setting up clocking identically for both
                  USRPs?&nbsp;&nbsp; That is setting the reference clock to
                  "external" and the 1PPS source to "external" on both
                  devices?&nbsp;&nbsp; Are you using a single multi_usrp object
                  for all RX channels?<br clear="none">
                  <br clear="none">
                  What type of daughtercards are in your X310?<br clear="none">
                  <br clear="none">
                  <br clear="none">
                </div>
              </div>
            </div>
            <div id="ydpc994c9a6yiv4349751442ydp5189b7afyqt89423" class="ydpc994c9a6yiv4349751442ydp5189b7afyqt7336830375">_______________________________________________<br clear="none">
              USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" class="ydpc994c9a6yiv4349751442moz-txt-link-freetext" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br clear="none">
              To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" class="ydpc994c9a6yiv4349751442moz-txt-link-freetext" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br clear="none">
            </div>
          </div>
        </div>
      </div>
      <br clear="none">
      <fieldset class="ydpc994c9a6yiv4349751442moz-mime-attachment-header"></fieldset>
      <pre class="ydpc994c9a6yiv4349751442moz-quote-pre">_______________________________________________
USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" class="ydpc994c9a6yiv4349751442moz-txt-link-abbreviated" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" class="ydpc994c9a6yiv4349751442moz-txt-link-abbreviated" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br clear="none">
  </div></div></div><div class="ydpc994c9a6yqt3149981368" id="ydpc994c9a6yqtfd03165">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_3180964_53397806.1714575608495--

--===============1095277063391768174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1095277063391768174==--
