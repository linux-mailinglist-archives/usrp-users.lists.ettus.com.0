Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0C82CB80F
	for <lists+usrp-users@lfdr.de>; Wed,  2 Dec 2020 10:05:36 +0100 (CET)
Received: from [::1] (port=42196 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kkO4q-0008JO-G7; Wed, 02 Dec 2020 04:05:32 -0500
Received: from mail-eopbgr60105.outbound.protection.outlook.com
 ([40.107.6.105]:6740 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <david.pisonero.ext@gfi.world>)
 id 1kkO4m-0008Eo-4n
 for usrp-users@lists.ettus.com; Wed, 02 Dec 2020 04:05:28 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LCJSmdMJdN22KBCF81mtYHYq0taHME2DnO1+KYwPUd5gbYD8x6s2ky2vbQKw4VYbsBlKZ3KCsf8jP4l7uLr6GNDHGlvb1wQnn7fokCnJOPu8iYHlo7XLN8ocETjvDh2w9wFAwDdM4QxZ8v2gc2hYnqojvX3f06Wx3Xn15llJFUxf68ItMsRFLo1cbutTXVGLjqWVZUwITVm5n9mTjgEPQ+9F9uw7sCc5KUSs/TwDAiuPbtPuDF730ReI4lVqpDQJOhT89crHk+/aDhf175I8Gmaqzm1P59dX1HnYXG/X247MZ/ca4V+++zonz/iU0+eq05B8OUNLYlnpsmT64YPCMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=II8BTz6/sIv/Oh5r1J4l/iLu8GrjebzXhhaxc3m6jNk=;
 b=EBE9CklDP9G3XDsOJZGt5bMgesINTaxbRQDXrsUPfWonPUz6waAuUc0W3zYD5CFVeyUmWcHWAPeKBV9igb1X7tMe/fTKiqkAnc+bW2O67+PftaJ1yN19y5wPmVKxUegGCupdhiezNUpkmBErg375tXrWSPWFqNl4F5HjbmYxlM9KprAmbvII9ORFKdqubqHLKZTn8ydwkCKnKxMBTpsAohzmgWkLVjtRP0pY78ZUwDBo8zRm2R6nT679yzwqF+SbespReEPzwuyE3D+BkK3ocpCYl9HF4lzxgwKLaVt6LCi7DMc+DGfPH2eamv2LDlWH1mqaLfZyMgYzCAnSwbc4ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gfi.world; dmarc=pass action=none header.from=gfi.world;
 dkim=pass header.d=gfi.world; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gfi.world; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=II8BTz6/sIv/Oh5r1J4l/iLu8GrjebzXhhaxc3m6jNk=;
 b=xID/QzVlZkRtkFz7PpqWQcwsD3DWCDA8KhJnAOQMsS+B5avVuduE4J3721cmfVRMwYeUxIKWok6GscJchzuVUj7QIH5jnuJ7carSyhi+y8Kg++FN9yytzduzhXbYjBkszzXHlyZ+uTLNshv+A/Xd0FYEQ/0s3R9CqQfW0SsAMDo=
Received: from PR3PR05MB6906.eurprd05.prod.outlook.com (2603:10a6:102:6e::11)
 by PR3PR05MB7500.eurprd05.prod.outlook.com (2603:10a6:102:90::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Wed, 2 Dec
 2020 09:04:46 +0000
Received: from PR3PR05MB6906.eurprd05.prod.outlook.com
 ([fe80::98a7:516e:781a:55a4]) by PR3PR05MB6906.eurprd05.prod.outlook.com
 ([fe80::98a7:516e:781a:55a4%6]) with mapi id 15.20.3632.017; Wed, 2 Dec 2020
 09:04:46 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Power decrease and phase coherence in USRP 2945
Thread-Index: AQHWyIea9S7h3wWfZ02aGb0eR5AwvA==
Date: Wed, 2 Dec 2020 09:04:45 +0000
Message-ID: <PR3PR05MB6906A937C2E9D6FEC9162D63DAF30@PR3PR05MB6906.eurprd05.prod.outlook.com>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=gfi.world;
x-originating-ip: [93.191.143.120]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e5a856eb-a737-4a51-64e3-08d896a150af
x-ms-traffictypediagnostic: PR3PR05MB7500:
x-microsoft-antispam-prvs: <PR3PR05MB750031B03882C6A0309ADEF7DAF30@PR3PR05MB7500.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +yZKoq/tXNHu6cceO4JkeTvnCtWQReMjDedoWYrExwtNOlKJ/dUHY25mwouus0VVtIlpGyhzSXhsZofq5xgzJCY1e7RfgOm98I4SU+gFQy59sXqWDOoG9PMKXHYDoFMaKRxffzQD/Lqr1J4U6qSHTODCcelJPHm2Kd7vgDsAjkxL7t92i33j/WVrpdSR5TRItFHstntPrrXR2ASdeOrk4e1RdQYC4Apu8VsiuivMQsV4YajxN6nRN6nNYvr6ocAdfLG+t2Mqgy+cpTaJ1CEBJ2am+iTT8srDb92XcrP1Afl1cNf+vUN9sPJgBKjMb1N6qG3/SOVfcCtyGakloMdS2N50CoLlImOTpZ3taF2AU135R0C5p7kn//pZnQuIJ0rX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PR3PR05MB6906.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(376002)(396003)(346002)(39860400002)(6506007)(52536014)(86362001)(6916009)(19627405001)(478600001)(26005)(186003)(5660300002)(2906002)(33656002)(8936002)(8676002)(316002)(71200400001)(7696005)(76116006)(66476007)(66446008)(9686003)(64756008)(66556008)(66946007)(83380400001)(55016002)(46492008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?2d6yMC9QIdGiWoTJVw7ePCXzzsJTujVTn+CNcwF1ZWxM1yHrYOtH7gSiw7?=
 =?iso-8859-1?Q?CkStjKfdCCd4NTEKTa8XShRLU9dqSRVepeYVyVUCDYmff8NgdIDjM2k+VC?=
 =?iso-8859-1?Q?HZ2bfBeRlF0o8hU1NZ9+dDY9CwKSRe/Hg7q4OldsiZWv5KzrFGuDd5kv4B?=
 =?iso-8859-1?Q?q8VBOWcABxlCt+H3MuKBYNq4DQ2lUpcWpchH9A1Slz06rtADNeZDAYXpgi?=
 =?iso-8859-1?Q?JRJp1nCo8xvY4+A7sWgFE9moEtiYrj+t7BjiQetp7NsXoBdG+iKggPJTB1?=
 =?iso-8859-1?Q?Lj4+er6bGgRexMRAObyjKXFNyKxXdu75BjHkqUAAUZG/aFREQXo/Q/Fgzb?=
 =?iso-8859-1?Q?b6awBIsUmHW7NS62/rxKZhc4tQECgF6wXIvlIkBJE5MIRioEGJf3+8TSF5?=
 =?iso-8859-1?Q?9xn/KLY830RNhHwM+aB2tsBIICxP8IFC4BHmQRpCHQQz3Mh0pGgRdDw4rO?=
 =?iso-8859-1?Q?1hDlFQ9MIZC3EO4elzho4XGOdUZ+YGkwCLFPlTaau+o6RspX05Yu4vRQVj?=
 =?iso-8859-1?Q?RPuegNJKLaW2ltxFmqcaPYnZb9++BQAzn+OXlnuioWs6TzxB0Eag5/sSxh?=
 =?iso-8859-1?Q?aenUqM86b50NJtvpoWhFYmmTj5hB1mazQWLCuXbhYtYz4wcjamr9zXd0Y3?=
 =?iso-8859-1?Q?cz1aeAMwWWdvB31/+jj4Pq7zAKK0rGADVPkSTBS2RRpcmWDO7q+ST8t3f7?=
 =?iso-8859-1?Q?WukI2qQMFl3wgoXp6ep+zu39fcuA1BH/qU1kfjKNUk2C/N8awjE/KczqtP?=
 =?iso-8859-1?Q?sY98T/NE4A1FOvCUC/EsjWwl6+LxmrQW52l3TvALkeeljmqJAWP1uCMeP2?=
 =?iso-8859-1?Q?JVdifrsYJc+PLY5X+eQNdcs/d50wAbmPe3T/yChjRsnni0Zr2+/cvlk2Ne?=
 =?iso-8859-1?Q?SrwedxwPTd86yCkh8Z75cc0mXV9RxKTLRYAhtN+E7teIr2t1Jsaqh2fbRt?=
 =?iso-8859-1?Q?VvdvLnPXT5jNDVp9ONTch4CKT+UPhtp+J4iNkJR0f8bdntT8K0rkHJ2gq7?=
 =?iso-8859-1?Q?Ywc1RDK7udbJ5n/us=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gfi.world
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3PR05MB6906.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5a856eb-a737-4a51-64e3-08d896a150af
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2020 09:04:45.9781 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 14cb4ab4-62b8-45a2-a944-e225383ee1f9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SZ9s5WqODP2tQhfdAzbeL3rDhF4eT8/jILKheLZMphU6Zx8ropHrxvRR15rGIy2HrXn8SiClTlzCvJi8TMP0Z/eUvhbouO5PYXFaoqB1ZYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR05MB7500
Subject: [USRP-users] Power decrease and phase coherence in USRP 2945
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
From: "Pisonero-Fuentes David \(Becario\) via USRP-users"
 <usrp-users@lists.ettus.com>
Reply-To: "Pisonero-Fuentes David \(Becario\)" <david.pisonero.ext@gfi.world>
Content-Type: multipart/mixed; boundary="===============3688579587704684569=="
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

--===============3688579587704684569==
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_PR3PR05MB6906A937C2E9D6FEC9162D63DAF30PR3PR05MB6906eurp_"

--_000_PR3PR05MB6906A937C2E9D6FEC9162D63DAF30PR3PR05MB6906eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi.


We have developed a project using the USRP 2945 and UHD libraries to estima=
te a signal's direction of arrival.

In this project, the four channels of the USRP 2945 are connected through a=
 power splitter to a function generator, and the local oscillators in the b=
ack are connected following the user guides (LO OUT 1 IF 2 connected to LO =
IN 0 IF 2, and LO OUT 1 IF 1 connected to LO IN 0 IF 1).

However, it seems that, when we tune some frequencies, 400 MHz for instance=
, we observe a huge decrease in power in channels 1 and 3 (50 dB).

Taking into account that, by eliminating the set_command_time instruction i=
n the setting tune frequency function, this problem disappears, we suspect =
that this may be caused by time synchronization. Although, if we do this, 9=
0 and 180 degrees phase offsets start appearing when we tune several freque=
ncies.

Does anyone know what might be happening? I think the relevant code is belo=
w:

Thank you for your time.

Regards.


    // SDR configuration
    usrp->set_time_unknown_pps(uhd::time_spec_t());

    usrp->set_rx_lo_export_enabled(true,uhd::usrp::multi_usrp::ALL_LOS,2); =
// 2
    usrp->set_rx_lo_source("internal",uhd::usrp::multi_usrp::ALL_LOS,2);  /=
/ 2
    usrp->set_rx_lo_source("companion",uhd::usrp::multi_usrp::ALL_LOS,3);  =
 // 3
    usrp->set_rx_lo_source("external",uhd::usrp::multi_usrp::ALL_LOS,0); //=
 0
    usrp->set_rx_lo_source("external",uhd::usrp::multi_usrp::ALL_LOS,1); //=
 1

    usrp->clear_command_time();
    usrp->set_command_time(usrp->get_time_now()+uhd::time_spec_t(0.1));

    uhd::tune_request_t tune_request(freq_);

    tune_request.dsp_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;

    for (int i =3D 0; i < CHANNELS; i++) {

        usrp->set_rx_rate(rate_, i);
        usrp->set_rx_freq(tune_request, i);
        usrp->set_rx_gain(gain_, i);
        usrp->set_rx_bandwidth(bandwidth_, i);
}

    std::this_thread::sleep_for(std::chrono::milliseconds(110));

    usrp->clear_command_time();





// A method to tune frequencies

bool Acquirer_SDR::sdr_set_tune_frequency(usrp_2945* radio, float freq, int=
 channels) {


    bool success =3D true;
    std::cout << "Setting tune frequency: " << freq << std::endl;
    radio->usrp->clear_command_time();
    radio->usrp->set_command_time(radio->usrp->get_time_now()+uhd::time_spe=
c_t(0.1));
    uhd::tune_request_t tune(freq);

    tune.dsp_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;

    for (int i =3D 0; i < channels; ++i) {
        std::cout << " Ch" << i << " ";
        radio->usrp->set_rx_freq(tune, i);
        std::cout << radio->usrp->get_rx_freq(i);
        if (std::abs(radio->usrp->get_rx_freq(i) - freq) > MAX_PRECISION){
            std::cout << " ERR";
            success =3D false;
        }
        else{
            radio->freq_ =3D freq;
            std::cout << " OK";
        }
    }
    std::cout << "\n";
    std::this_thread::sleep_for(std::chrono::milliseconds(110));
    radio->usrp->clear_command_time();
    return success;
}

--_000_PR3PR05MB6906A937C2E9D6FEC9162D63DAF30PR3PR05MB6906eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">Hi.</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">We have developed a project using the USRP 2945 and UHD libraries to esti=
mate a signal's direction of arrival.</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">In this project, the four channels of the USRP 2945 are connected through=
 a power splitter to a function generator, and the local oscillators in the=
 back are connected following the
 user guides (LO OUT 1 IF 2 connected to LO IN 0 IF 2, and LO OUT 1 IF 1 co=
nnected to LO IN 0 IF 1).</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">However, it seems that, when we tune some frequencies, 400 MHz for instan=
ce, we observe a huge decrease in power in channels 1 and 3 (50 dB).</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">Taking into account that, by eliminating the set_command_time instruction=
 in the setting tune frequency function, this problem disappears, we suspec=
t that this may be caused by time
 synchronization. Although, if we do this, 90 and 180 degrees phase offsets=
 start appearing when we tune several frequencies.</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">Does anyone know what might be happening? I think the relevant code is be=
low:</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">Thank you for your time.</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">Regards.</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">&nbsp; &nbsp; // SDR configuration</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">&nbsp; &nbsp; usrp-&gt;set_time_unknown_pps(uhd::time_spec_t());
<div>&nbsp; &nbsp; </div>
<div>&nbsp; &nbsp; usrp-&gt;set_rx_lo_export_enabled(true,uhd::usrp::multi_=
usrp::ALL_LOS,2); // 2</div>
<div>&nbsp; &nbsp; usrp-&gt;set_rx_lo_source(&quot;internal&quot;,uhd::usrp=
::multi_usrp::ALL_LOS,2); &nbsp;// 2</div>
<div>&nbsp; &nbsp; usrp-&gt;set_rx_lo_source(&quot;companion&quot;,uhd::usr=
p::multi_usrp::ALL_LOS,3); &nbsp; // 3</div>
<div>&nbsp; &nbsp; usrp-&gt;set_rx_lo_source(&quot;external&quot;,uhd::usrp=
::multi_usrp::ALL_LOS,0); // 0</div>
<div>&nbsp; &nbsp; usrp-&gt;set_rx_lo_source(&quot;external&quot;,uhd::usrp=
::multi_usrp::ALL_LOS,1); // 1</div>
<div><br>
</div>
<div>&nbsp; &nbsp; usrp-&gt;clear_command_time();</div>
<div>&nbsp; &nbsp; usrp-&gt;set_command_time(usrp-&gt;get_time_now()+uhd::t=
ime_spec_t(0.1));</div>
<div>&nbsp; &nbsp; </div>
<div>&nbsp; &nbsp; uhd::tune_request_t tune_request(freq_);</div>
<div><br>
</div>
&nbsp; &nbsp; tune_request.dsp_freq_policy =3D uhd::tune_request_t::POLICY_=
MANUAL;<br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">&nbsp; &nbsp;</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">&nbsp; &nbsp;&nbsp;for (int i =3D 0; i &lt; CHANNELS; i++) {
<div><br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; usrp-&gt;set_rx_rate(rate_, i);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; usrp-&gt;set_rx_freq(tune_request, i);</di=
v>
<div>&nbsp; &nbsp; &nbsp; &nbsp; usrp-&gt;set_rx_gain(gain_, i);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; usrp-&gt;set_rx_bandwidth(bandwidth_, i);<=
/div>
<div>}</div>
</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp;&nbsp;std::this_thread::sleep_for(std::chrono::milliseconds(11=
0));
<div><br>
</div>
&nbsp; &nbsp; usrp-&gt;clear_command_time();</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
// A method to tune frequencies</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
bool Acquirer_SDR::sdr_set_tune_frequency(usrp_2945* radio, float freq, int=
 channels) {
<div>&nbsp; &nbsp; </div>
<div>&nbsp; &nbsp; </div>
<div>&nbsp; &nbsp; bool success =3D true;</div>
<div>&nbsp; &nbsp; std::cout &lt;&lt; &quot;Setting tune frequency: &quot; =
&lt;&lt; freq &lt;&lt; std::endl;</div>
<div>&nbsp; &nbsp; radio-&gt;usrp-&gt;clear_command_time();</div>
<div>&nbsp; &nbsp; radio-&gt;usrp-&gt;set_command_time(radio-&gt;usrp-&gt;g=
et_time_now()+uhd::time_spec_t(0.1));</div>
<div>&nbsp; &nbsp; uhd::tune_request_t tune(freq);</div>
<div><br>
</div>
<div>&nbsp; &nbsp; tune.dsp_freq_policy =3D uhd::tune_request_t::POLICY_MAN=
UAL;</div>
<div>&nbsp; &nbsp; </div>
<div>&nbsp; &nbsp; for (int i =3D 0; i &lt; channels; ++i) {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; std::cout &lt;&lt; &quot; Ch&quot; &lt;&lt=
; i &lt;&lt; &quot; &quot;;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; radio-&gt;usrp-&gt;set_rx_freq(tune, i);</=
div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; std::cout &lt;&lt; radio-&gt;usrp-&gt;get_=
rx_freq(i);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; if (std::abs(radio-&gt;usrp-&gt;get_rx_fre=
q(i) - freq) &gt; MAX_PRECISION){</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; std::cout &lt;&lt; &quot; ER=
R&quot;;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; success =3D false;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; }</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; else{</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; radio-&gt;freq_ =3D freq;</d=
iv>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; std::cout &lt;&lt; &quot; OK=
&quot;;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; } </div>
<div>&nbsp; &nbsp; }</div>
<div>&nbsp; &nbsp; std::cout &lt;&lt; &quot;\n&quot;;</div>
<div>&nbsp; &nbsp; std::this_thread::sleep_for(std::chrono::milliseconds(11=
0));</div>
<div>&nbsp; &nbsp; radio-&gt;usrp-&gt;clear_command_time();</div>
<div>&nbsp; &nbsp; return success;</div>
}<br>
</div>
</body>
</html>

--_000_PR3PR05MB6906A937C2E9D6FEC9162D63DAF30PR3PR05MB6906eurp_--


--===============3688579587704684569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3688579587704684569==--

