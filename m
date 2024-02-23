Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95110861DF4
	for <lists+usrp-users@lfdr.de>; Fri, 23 Feb 2024 21:46:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 524DF384DAF
	for <lists+usrp-users@lfdr.de>; Fri, 23 Feb 2024 15:46:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708721166; bh=yLVQsGsNU4w+bjgbdzJOoFpBIutxKGJb1vW39owrco4=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=XIeqQn0bxu7Ja6LA7S+a//Lpg9oViWX3+wb36Td6qM8m+9iGpD4SHQZZmh7KQA+fZ
	 nM8mTqsFqStrfhX0sTIFpKpzYiySLIP/TGHqvoWZoyMIsfxZT3bUqVzlf+3+m5wF/8
	 4LevvgPQS08ds2pds93sl4n50kIvpWa0ZOeDm/jyonzQ0iZuiW4aKMmjfFjprtErNc
	 2JByguHHivLHlkJcU5np4LZDnZaCJc7nntQbFW4L07yyf4STgHL4vJrQnPU93dlSLi
	 rQQilOJdqyo2zz2CEn4YzpIVTdaMXjlHcyOTnF227Blz1SV3LfVNZhNE/UZofLrNJM
	 DvVGpxfc+suKA==
Received: from sonic312-21.consmr.mail.bf2.yahoo.com (sonic312-21.consmr.mail.bf2.yahoo.com [74.6.128.83])
	by mm2.emwd.com (Postfix) with ESMTPS id D11BC384C59
	for <usrp-users@lists.ettus.com>; Fri, 23 Feb 2024 15:45:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="EyQD1SaI";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1708721103; bh=hq7e1+qOPjb173kpRjnCuADj+AaYlUAbaBhlfkf2b30=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=EyQD1SaIChHE50ERfAw+B0wuGnsu2H4NfWofOa65Zg4qC2F+WK++ijiUKF7OR+7SAiRraV2LBvHOLJR/scGM0lETeb/S349P7jxslE5EfAVHqXfRiW7N6w1VUtXRq/kByyXXHQdDlXJKjKlDveoyyUHx4p+G2Zxe5QdWQQcZfIPwEclcYU9GzgQ+R1+n+vXTSjI+tNIswOkWsB/7zreOhSVJEGk9yS97wght8VzUi0BnInszQuvBZsBCdIygtE8eGp/85ICdEm78a8h8gnMZGubC+1z9jaSxwmmftBqt4UO+8OZEi/G+6hVHz0wNzg8IGDGIV8GxbOwhBU9llRFz9w==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1708721103; bh=NMYt8sEcKXWnSZ7UiJJS3PxJg5z8KzZUOfpeSE8FYQy=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=g80iN4oamFQDFTC8StjtaG1Ltn2gFtVmVWMtFkQlZtjWd3fM3Lr178HxDJMhbMJ17UADdrIswZ0bv13HH1l1CsNRgU8hOD7gq8xs4WRUVmqKw7djr9JPGJ25fk8jy+AZ6/txlrFDay/t6I/qf8yrpVIWxBj64ege4zxEk4Peer9tuyhzPeLMmW0iA3gxj4v7RJdyTHQw8GINjd31AEd9KOV2qagXXfM0yAlaypK0siWKU6NdGZeFD4fWMt6kgjYH8NnB0yXno2WheVxpjdKVdijmQ6dM4KPA1uHGDYCfbDgXJtKb3si0Iq07q9084xfa+sSk5nWvDPzS3CQBpsavSg==
X-YMail-OSG: dS3hCBgVM1n863st7hLDpvkSZ0OlIETwPkXYCDHYu4qIliAj9sIgxKpoVcNjjvx
 cKNG_xdRlw9cn40gSZ7klCuuHJEjtE8r9t7UWqW4gdigKe0r4di_VJ41JlbLFOVw94XbwSZnxs5o
 DuGpbQ_f6iu1W6FwhjP2fHuOVCP8DYH9aOs10lnMnWpDl4UG7cqplhdqNGxKA.wAcdNRFPz3sAaa
 BPi2lm2V6L.K8VkB2AdcZD01WyAJup_H_Fq8TADHf3d28rhe8JuqzLtMYQFSvBURKM57Pld5Ryk0
 X67xr55__Dg7aAGiufmt02eTBQPdqI4tZNz2C8K36J.BjHwAs6swMUO1Q1P9FPCOYVZ8otwTZDMl
 krOFqniIvjYKfSFLK9pB4RzhZe1FaVC1n.wJIIWRZTplyzjxUQkHTP7jcILcwheb6r2qjZZ3iT9R
 8j1h0sGfehSNYgP23ikY_xI0hSpqw8pwQHBk6nhg5qG5jBPT8gRt4kQN64MpfAsKzpRZ2NPMlSfA
 hy3rbrJmXJ0hSxWxFtAuxEuTvjZFO6nAdBGIXb8b1UWPlMR6LNcGwxlsJi6yZCyUnurwU4utFdwe
 he0wmtCPXSPf90gJ9UOKEm4uDPmAUzS8LdjoLG8JtgGSMCOIT3dAuTCU6sg1qGkZ.l1yEgoE1wa6
 wBMbkgTkJwrGhKXO7pGu6ponYaitRw2J54HVBw1Uzj7BunIea3sc5Hg4AyvYN1wVMOz_hgirTFrg
 HmkQPq4ohw6.ugjevR1s_qPWRSyyx35f6zeiqhWjY2UKINtmdPExcMyvyXt5Gi0AtV9Hql0l9.C4
 NdeW2MBybFCbvY2Z4MpMe3dn2ggHqx5IosEWfVYP2x7BGd29Pd.vY9aBOnfAsUMnMA1maUT86Iqx
 nqZOfcq906VQlC9xtCKZ_sP_vJmHT0BF3j3wNWb0Tgh9J6MrmYQDtjNN2JfqVIWddSxyFA9DaGiW
 yahFTqkVUSe3DN1hzlnjlauBaSx_LcZKqiXmhn37190ddEPjkSL1Xlt4Eimg5bkZRLdz58VUiSJh
 OBF3ie.F3qpmkh7nPueUXK_5fEm95VN7HaI22vWcRJo3rP0YsgVKUZ4DoDGRcpox8Kc93xeQ._pa
 Z.i427faKk.5LxMPra49JboKE2vj_VAQRAIncR_I_XvCSmRk2xKLKTDFGqdENwpX9wg447UH5SUB
 tvOfEAk.pdsStcwI6HVAQ6Cs40UjqdfeyrKvVvYYcQWE2XfvmJoJzItjm6Bwi3iW1m8aLp7aGI6L
 3TP3CRcBJPxbscF4RvYTnNFxNcZBhrlGPsjFSUlBIRvieVvvVXRqxba0Z34Jchn7H6RJB.1YUiXp
 vGO3sZXUvpehCgBRubZfV8jqucvjz2QpTR7VZtqi4Ga4kOFUarHZRbUf8KeS48dPl5a6cjsG4F2W
 kHJYmkZ42B4f13j5A8BQHdwe9_OLsbjGp_u_e52IqrUsexU4zYP0hBVWwNeAtqnuHpBlOIXL62_8
 EkpkEhOJ7z2buV8gduA1qTf2bPlqywJKMYxwwbq6b0hNnTXmKskdSya5mqIgp4BC2vQVKFXgFURU
 ALoqSmxTYojDEvaEOCWqjSskCRst7HIVnscmgelaLBVFx7LM2tGrBSe3fBWEGJnNz00SfVnRyUo3
 ZV1ndwNUanbQU9QTxMd1_BWghftkAvyWUKoZQvwwd88YMEif1EU_xyUFvkoO7CEZrCE2DhekJYJn
 aCvQOUwichbmLBAAsBq8NbR5KMLH3C9g8.G97TWkaLvukgAe2pHwyNlYNvj2qHRyIAQ5ZDefQ.Rj
 oOe7slAQt5GPC6m5dlj3CoK9m2Uip5jEPiKpfy4whnxXrSsYADqLAQ3esIfQFw5ttwqwFlSCOOIt
 e9YIZV18Juyto5loj8.BAw2Vrm6S_Eh9_emEpGEAle4Y_0LUSnppjNskB93jYKTfrKVRJGSE_S1_
 UVmsyvsB37Zi_S9c.cVJCi8RfftN776EAC0QH5cRUU2MjTyuqc16O8ltwX9hHgQbc2.tk6.XjAJN
 .N6mi.6dXQlieRF2bSynu8jswMdbQL8DWPEP.DbvHChURB5_Wc0XMC5W6XBiRtpyU6lDiWgLHa80
 tnevecikg0Fc68lwSAtmgX_ORLPfNelrF3rOgROBalZAyJWtm3w0.5ex9k2AwbazgAZG.8qOuU9Z
 1gfPeyIUjJ4yiMhll7WZxO02uQNWUclKp3qVEKKK4Ufai31eG6Gj4I3QKmfszrsUmcRXBFo6412G
 fD1jsbGxXGrEBVPYPEVXvvonm_GBdb7qwA9gV2_6B0xx6LLGbrSQbLOM-
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 95d23378-af7b-40d5-9d59-5a5332eb8a4f
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.bf2.yahoo.com with HTTP; Fri, 23 Feb 2024 20:45:03 +0000
Date: Fri, 23 Feb 2024 20:44:59 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	Pedro Vieira <pav.vieira@gmail.com>
Message-ID: <1464756341.27900.1708721099612@mail.yahoo.com>
In-Reply-To: <CAO_U4K7iMNWLhLRdWozsXxNQHd0xvp611f7LXQQhSe=-hz+ong@mail.gmail.com>
References: <CAO_U4K7iMNWLhLRdWozsXxNQHd0xvp611f7LXQQhSe=-hz+ong@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22103 YMailNorrin
Message-ID-Hash: BKPDUMGBVON6UJDW2G3NEOAD2P5CF2I5
X-Message-ID-Hash: BKPDUMGBVON6UJDW2G3NEOAD2P5CF2I5
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BKPDUMGBVON6UJDW2G3NEOAD2P5CF2I5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7901629747145376606=="

--===============7901629747145376606==
Content-Type: multipart/alternative;
	boundary="----=_Part_27899_1190986650.1708721099611"

------=_Part_27899_1190986650.1708721099611
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Pedro,
It could be DC leakage. Try to run the calibration commands. For X310, you =
need to loopback connect Tx and Rx antennas with 30dB attenuators.
Regards,Hongwei


    On Friday, 23 February 2024 at 01:52:37 GMT, Pedro Vieira <pav.vieira@g=
mail.com> wrote: =20
=20
 An ofdm signal, which is generated in python, presents a peak in the centr=
al part of the spectrum.=C2=A0 What could it be?This same behavior appears =
on USRP X310 and HackRFOne._______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_27899_1190986650.1708721099611
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp17afaf59yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi Pedro,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">It could be DC leakage. Try to run the calibration commands. For X310, you need to loopback connect Tx and Rx antennas with 30dB attenuators.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Regards,</div><div dir="ltr" data-setdir="false">Hongwei</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div><div><br></div>
        
        </div><div id="ydp78e768d5yahoo_quoted_9655145202" class="ydp78e768d5yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Friday, 23 February 2024 at 01:52:37 GMT, Pedro Vieira &lt;pav.vieira@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="ydp78e768d5yiv5836597356"><div>An ofdm signal, which is generated in python, presents a peak in the central part of the spectrum.&nbsp; What could it be?<div>This same behavior appears on USRP X310 and HackRFOne.</div></div>
</div>_______________________________________________<br>USRP-users mailing list -- <a href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send an email to <a href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br></div>
            </div>
        </div></body></html>
------=_Part_27899_1190986650.1708721099611--

--===============7901629747145376606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7901629747145376606==--
