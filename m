Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B3163425
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2019 12:21:38 +0200 (CEST)
Received: from [::1] (port=36168 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hknFc-0002j4-Ap; Tue, 09 Jul 2019 06:21:32 -0400
Received: from neon-v1.ccupm.upm.es ([138.100.198.71]:48291)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <pablo.mdiaz@alumnos.upm.es>)
 id 1hknFY-0002f8-9M
 for usrp-users@lists.ettus.com; Tue, 09 Jul 2019 06:21:28 -0400
Received: from www.upm.es (webmail01.dcupm [10.20.20.20])
 by neon-v1.ccupm.upm.es (8.14.4/8.14.4/neon-v1-002) with ESMTP id
 x69AKk1v012122
 for <usrp-users@lists.ettus.com>; Tue, 9 Jul 2019 12:20:46 +0200
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="=_2172bcac6586fe243b49811e10cb848f"
Date: Tue, 09 Jul 2019 12:20:46 +0200
To: usrp-users@lists.ettus.com
Message-ID: <22eff1fccc74ab3d4e16bac2f481f11e@alumnos.upm.es>
X-Sender: pablo.mdiaz@alumnos.upm.es
User-Agent: Webmail UPM Alumnos
X-Originating-IP: 138.100.9.10
X-BitDefender-Scanner: Clean,
 Agent: BitDefender Milter 3.1.6 on neon-v1.ccupm.upm.es, sigver: 7.81545
Subject: [USRP-users] Zeros at beggining of samples
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
From: "pablo.mdiaz via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "pablo.mdiaz" <pablo.mdiaz@alumnos.upm.es>
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

--=_2172bcac6586fe243b49811e10cb848f
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8;
 format=flowed

Hi all,

We have a X310 SDR and we are obtaining IQ samples from 4 channels. To 
do that we created 4 buffers to store them and for debug purposes write 
them in a file.

The problem we have is that at the beginning of the buffers they appear 
to be empty (full of zeros), the attached file contains a memory dump of 
all the buffers.

The following code is the initialization of the SDR, maybe we are 
forgetting to initialize some parameters.

     std::string device_args = "RIO0";
     std::string subdev = "A:0 A:1 B:0 B:1";
     std::string clock_source = "internal";

     usrp = uhd::usrp::multi_usrp::make(device_args);
     usrp->set_clock_source(clock_source);
     usrp->set_rx_subdev_spec(subdev);

     uhd::tune_request_t tune_request(freq);

     for (int i = 0; i < CHANNELS; i++) {
         usrp->set_rx_rate(rate,i);
         usrp->set_rx_freq(tune_request,i);
         usrp->set_rx_gain(gain,i);
         usrp->set_rx_bandwidth(bw,i);
     }

     uhd::stream_args_t stream_args("fc32", "sc16");
     stream_args.channels = {0, 1, 2, 3};
     stream_args.args["spp"] = "512";
     rx_stream = usrp->get_rx_stream(stream_args);
     const int spp = rx_stream->get_max_num_samps();

     std::vector<std::vector<std::complex<float>>> buffs (
         num_channels,
         std::vector<std::complex<float>> (spp)
     );

     for(int i = 0; i< buffs.size(); i++)
         buffPtrs.push_back(buffs[i].data());

     uhd::stream_cmd_t stream_cmd = 
uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS;
     stream_cmd.stream_now = false;


//We suspect this block is causing the odd behavior
{
     stream_cmd.time_spec = uhd::time_spec_t (1.9);
     rx_stream->issue_stream_cmd(stream_cmd);
     std::this_thread::sleep_for(std::chrono::milliseconds(2000));
}

Then this function is called multiple times to gather the IQ samples

     read = rx_stream->recv(buffPtrs, 512, rx_metadata, 2);

Hope you can help us, thanks beforehand.

Pablo (Universidad Politécnica de Madrid)

--=_2172bcac6586fe243b49811e10cb848f
Content-Transfer-Encoding: base64
Content-Type: text/plain;
 name=Samples
Content-Disposition: attachment;
 filename=Samples;
 size=1168

Q2hhbm5lbCAwCgowMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAKMDAwMCAw
MDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMCAwMDAwCjAwMDAgMDAwMCAwMDAwIDAwMDAgMDAw
MCAwMDAwIDAwMDAgMDAwMAowMDAwIDAwMDAgZTRmZSBmZjM3IDAwMDAgMDAwMCBlNGZlIGZmYjcK
MDAwMCAwMDAwIDJiZmYgYmYzOCAwMDAwIDAwMDAgNGVmZiAxZmI5CjAwMDAgMDAwMCA2MGZmIDhm
MzkgZTRmZSBmZjM3IDA4ZmYgZGZiOQplNGZlIGZmYjcgM2RmZiAyZjNhIGU0ZmUgZmYzNyA2ZWZm
IDgzYmEKCkNoYW5uZWwgMQoKMDAwMCAwMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMCAwMDAw
CjAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMAowMDAwIDAwMDAgMDAwMCAw
MDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAKZTRmZSBmZmI3IGU0ZmUgZmYzNyBlNGZlIGZmMzcgZTRm
ZSBmZmI3CmU0ZmUgN2ZiOCBlNGZlIDdmMzggZTRmZSBmZjM4IDJiZmYgYmZiOAoyYmZmIDNmYjkg
MmJmZiAzZjM5IDRlZmYgOWYzOSA2MGZmIDhmYjkKZjZmZSBlZmI5IGY2ZmUgZWYzOSAzZGZmIDJm
M2EgM2RmZiAyZmJhCgpDaGFubmVsIDIKCjAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMCAwMDAwIDAw
MDAgMDAwMAowMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAKMDAwMCAwMDAw
IDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMCAwMDAwCmU0ZmUgZmYzNyAwMDAwIDAwMDAgZTRmZSBm
ZmI3IDAwMDAgMDAwMAoyYmZmIGJmMzggZTRmZSBmZmI3IDRlZmYgMWZiOSBlNGZlIDdmMzgKNjBm
ZiA4ZjM5IGU0ZmUgZmZiOCAwOGZmIGRmYjkgMmJmZiAzZjM5CjNkZmYgMmYzYSA2MGZmIDhmYjkg
NmVmZiA4M2JhIDA4ZmYgZGYzOQoKCkNoYW5uZWwgMwoKMDAwMCAwMDAwIDAwMDAgMDAwMCAwMDAw
IDAwMDAgMDAwMCAwMDAwCjAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMAow
MDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAKZTRmZSBmZmI3IGU0ZmUgZmZi
NyBlNGZlIGZmMzcgZTRmZSBmZjM3CmU0ZmUgN2ZiOCBlNGZlIDdmYjggMmJmZiBiZjM4IDRlZmYg
MWYzOQoyYmZmIDNmYjkgMDhmZiA1ZmI5IGU0ZmUgN2YzOSAyYmZmIGJmMzkKMTlmZiBjZmI5IDYw
ZmYgMGZiYSA0ZWZmIDFmM2EgMDhmZiA1ZjNhCg==
--=_2172bcac6586fe243b49811e10cb848f
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--=_2172bcac6586fe243b49811e10cb848f--


