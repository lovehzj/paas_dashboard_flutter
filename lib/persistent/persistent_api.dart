import 'package:paas_dashboard_flutter/module/ssh/ssh_step.dart';
import 'package:paas_dashboard_flutter/persistent/po/bk_instance_po.dart';
import 'package:paas_dashboard_flutter/persistent/po/code_instance_po.dart';
import 'package:paas_dashboard_flutter/persistent/po/k8s_instance_po.dart';
import 'package:paas_dashboard_flutter/persistent/po/mongo_instance_po.dart';
import 'package:paas_dashboard_flutter/persistent/po/mysql_instance_po.dart';
import 'package:paas_dashboard_flutter/persistent/po/pulsar_instance_po.dart';
import 'package:paas_dashboard_flutter/persistent/po/redis_instance_po.dart';
import 'package:paas_dashboard_flutter/persistent/po/sql_instance_po.dart';
import 'package:paas_dashboard_flutter/persistent/po/zk_instance_po.dart';

abstract class PersistentApi {
  Future<void> savePulsar(String name, String host, int port, String functionHost, int functionPort);

  Future<void> deletePulsar(int id);

  Future<List<PulsarInstancePo>> pulsarInstances();

  Future<PulsarInstancePo?> pulsarInstance(String name);

  Future<void> saveBookkeeper(String name, String host, int port);

  Future<void> deleteBookkeeper(int id);

  Future<List<BkInstancePo>> bookkeeperInstances();

  Future<BkInstancePo?> bookkeeperInstance(String name);

  Future<void> saveZooKeeper(String name, String host, int port);

  Future<void> deleteZooKeeper(int id);

  Future<List<ZkInstancePo>> zooKeeperInstances();

  Future<ZkInstancePo?> zooKeeperInstance(String name);

  Future<void> saveKubernetesSsh(String name, List<SshStep> sshSteps);

  Future<void> deleteKubernetes(int id);

  Future<List<K8sInstancePo>> kubernetesInstances();

  Future<K8sInstancePo?> kubernetesInstance(String name);

  Future<void> saveMongo(String name, String addr, String username, String password);

  Future<void> deleteMongo(int id);

  Future<List<MongoInstancePo>> mongoInstances();

  Future<MongoInstancePo?> mongoInstance(String name);

  Future<void> saveMysql(String name, String host, int port, String username, String password);

  Future<void> deleteMysql(int id);

  Future<List<MysqlInstancePo>> mysqlInstances();

  Future<MysqlInstancePo?> mysqlInstance(String name);

  Future<void> saveSql(String name, String sql);

  Future<void> deleteSql(int id);

  Future<List<SqlPo>> sqlList();

  Future<SqlPo?> sqlInstance(String name);

  Future<void> saveCode(String name, String code);

  Future<void> deleteCode(int id);

  Future<List<CodePo>> codeList();

  Future<void> saveRedis(String name, String host, int port, String username, String password);

  Future<void> deleteRedis(int id);

  Future<List<RedisInstancePo>> redisInstances();

  Future<RedisInstancePo?> redisInstance(String name);

  Future<CodePo?> codeInstance(String name);
}
